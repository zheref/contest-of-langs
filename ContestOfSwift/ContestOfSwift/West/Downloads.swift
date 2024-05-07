//
//  Downloads.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import Foundation
import Combine

// For Session implementation
typealias Response = (Data, URLResponse)
typealias ResponseResolver = (Result<Response, Error>) -> Void

// For URL implementation
typealias DataResolver = (Result<Data, Error>) -> Void

protocol URLSessionProtocol {
    func download(from url: URL, then handler: ResponseResolver?)
    func data(for url: URL) -> AnyPublisher<Response, Error>
    func downloaded(from url: URL) async throws -> Response
}

extension URL {

    func download(using session: URLSessionProtocol = URLSession.shared, then completion: DataResolver?) {
        session.download(from: self) { result in
            switch result {
            case .success(let (data, _)):
                completion?(.success(data))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }

    func data(using session: URLSessionProtocol = URLSession.shared) -> AnyPublisher<Data, Error> {
        session.data(for: self)
            .map(\.0)
            .eraseToAnyPublisher()
    }

    func downloaded(using session: URLSessionProtocol = URLSession.shared) async throws -> Data {
        let (data, _) = try await session.downloaded(from: self)
        return data
    }

}

extension URLSession: URLSessionProtocol {

    // Closure based: Imperative
    // In this case instead of just wrapping we change implementation to leverate results
    func download(from url: URL, then handler: ResponseResolver? = nil) {
        dataTask(with: url) { data, response, error in
            if let error = error {
                handler?(.failure(error))
                return
            }

            guard let response = response else { return }
            let data = data ?? .init(count: 0)
            handler?(.success((data, response)))
        }
    }

    // Reactive based: Noun (some times we may want to add publisher or future suffixes)
    func data(for url: URL) -> AnyPublisher<Response, Error> {
        dataTaskPublisher(for: url)
            .map { ($0, $1) }
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }

    // Concurrency based: Participle
    func downloaded(from url: URL) async throws -> Response { try await data(from: url) }

}
