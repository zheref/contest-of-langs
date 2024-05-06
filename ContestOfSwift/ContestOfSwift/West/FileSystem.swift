//
//  FileSystem.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import Foundation
import Combine

extension URL {

    func reading<T: Codable>() throws -> T {
        let data = try Data(contentsOf: self)
        return try JSONDecoder().decode(T.self, from: data)
    }

    func read<T: Codable>(_ handler: @escaping (Result<T, Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            do { handler(.success(try reading())) }
            catch { handler(.failure(error)) }
        }
    }

    func read<T: Codable>(then handler: @escaping (Result<T, Error>) -> Void) {
        let queue = OperationQueue()
        queue.qualityOfService = .background
        let operation = JSONReadingOperation<T>(uri: self, handler: handler)
        queue.addOperation(operation)
    }

    func contents<T: Codable>() -> AnyPublisher<T, Error> {
        Deferred {
            Future<T, Error> { send in
                do { send(.success(try reading())) }
                catch { send(.failure(error)) }
            }
        }
        .subscribe(on: DispatchQueue.global(qos: .background))
        .eraseToAnyPublisher()
    }

    func contents<T: Codable>() async throws -> T {
        return try await FileReader().reading(url: self)
    }

}

class JSONReadingOperation<T: Codable>: Operation {
    let uri: URL
    var result: Result<T, Error>?
    var handler: (Result<T, Error>) -> Void

    init(uri: URL, handler: @escaping (Result<T, Error>) -> Void) {
        self.uri = uri
        self.handler = handler
    }

    override func start() {
        self.completionBlock = { [weak self] in
            guard let result = self?.result else { return }
            self?.handler(result)
        }

        super.start()
    }

    override func main() {
        guard !isCancelled else { return }

        do {
            result = .success(try uri.reading())
        } catch {
            result = .failure(error)
        }
    }
}

private actor FileReader {
    func reading<T: Codable>(url: URL) throws -> T {
        return try url.reading()
    }
}
