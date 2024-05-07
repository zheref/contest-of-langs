//
//  REST.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 7/05/24.
//

import Foundation
import Combine

enum REST {
    enum Method: String {
        case get
        case post
        case put
        case patch
        case delete

        var spelled: String { rawValue.uppercased() }
    }
    
    enum EndpointError: Error {
        case malformedUrl
    }
    
    enum ClientError: Error {}
    
    protocol Endpoint {
        var baseUrl: String { get }
        var route: String { get }
        var method: Method { get }
        
        var headers: [String: String]? { get }
        var body: Data? { get }
        var queryParameters: [String: String]? { get }
        
        func createRequest() throws -> URLRequest
    }

    protocol ClientProtocol {
        func request<Model: Decodable>(fromEndpoint endpoint: Endpoint) async throws -> Model
    }

    struct Client: ClientProtocol {
        let session: URLSession
        
        init(session: URLSession = .shared) {
            self.session = session
        }
        
        func request<Model: Decodable>(fromEndpoint endpoint: Endpoint) async throws -> Model {
            let request = try endpoint.createRequest()
            let (data, _) = try await session.data(for: request)
            return try JSONDecoder().decode(Model.self, from: data)
        }
        
        func endpoint<Model: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<Model, Error> {
            do {
                let request = try endpoint.createRequest()
                return session
                    .dataTaskPublisher(for: request)
                    .map(\.data)
                    .decode(type: Model.self, decoder: JSONDecoder())
                    .eraseToAnyPublisher()
            } catch {
                return Fail<Model, Error>(error: error).eraseToAnyPublisher()
            }
        }
        
    }
}

extension URLQueryItem {
    static func from(_ kv: (String, String)) -> URLQueryItem {
        return .init(name: kv.0, value: kv.1)
    }
}

extension REST.Endpoint {
    var body: Data? { nil }
    var queryParameters: [String: String]? { nil }
    
    func createRequest() throws -> URLRequest {
        var urlComponents = URLComponents(string: baseUrl)
        urlComponents?.path = route
        urlComponents?.queryItems = queryParameters?.map(URLQueryItem.from)
        
        guard let url = urlComponents?.url else { throw REST.EndpointError.malformedUrl }
        var request = URLRequest(url: url)
        request.httpMethod = method.spelled
        request.httpBody = body
        
        if let headers = headers {
            headers.forEach { request.addValue($1, forHTTPHeaderField: $0) }
        }
        
        return request
    }
}
