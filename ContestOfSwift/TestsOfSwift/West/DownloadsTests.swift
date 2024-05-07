//
//  DownloadsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import XCTest
import Combine

struct MockedURLSession: URLSessionProtocol {
    let nextError: Error?
    let nextData: Data?

    static func rawResponse(from url: URL, andData data: Data) -> URLResponse {
        .init(
            url: url,
            mimeType: nil,
            expectedContentLength: data.count,
            textEncodingName: nil
        )
    }

    func download(from url: URL, then handler: ResponseResolver?) {
        if let error = nextError {
            handler?(.failure(error))
        } else if let data = nextData {
            handler?(.success((
                data,
                Self.rawResponse(from: url, andData: data)
            )))
        }
    }
    
    func data(for url: URL) -> AnyPublisher<Response, Error> {
        if let error = nextError {
            return Fail<Response, Error>(error: error)
                .eraseToAnyPublisher()
        } else if let data = nextData {
            return Just((
                data,
                Self.rawResponse(from: url, andData: data)
            ))
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
        } else {
            return Fail<Response, Error>(
                error: NSError(domain: "No data to resolve", code: 0) as Error
            ).eraseToAnyPublisher()
        }
    }
    
    func downloaded(from url: URL) async throws -> Response {
        if let error = nextError {
            throw error
        } else if let data = nextData {
            return (
                data,
                Self.rawResponse(from: url, andData: data)
            )
        } else {
            throw NSError(domain: "No data to resolve", code: 0) as Error
        }
    }
}

final class DownloadsTests: XCTestCase {

    private static let fakeResourceUrl1 = URL(string: "https://fakedomain.com/resource")!

    private static let validImageUrl1 = URL(string: "https://picsum.photos/300/200")! // 3:2
    private static let validImageUrl2 = URL(string: "https://picsum.photos/640/480")! // 4:3
    private static let validImageUrl3 = URL(string: "https://picsum.photos/1920/1080")! // 16:9
    private static let notFoundImageUrl = URL(string: "https://picsum.photos/notfound")! // Not Found!
    private static let invalidImageUrl = URL(string: "https://picsum.never/never")! // THROWS!

    func testDownload_FromRealNetwork_Async() async {
        do {
            let image1 = try await Self.validImageUrl1.downloaded()
            XCTAssertNotNil(image1)
            let image2 = try await Self.validImageUrl2.downloaded()
            XCTAssertNotNil(image2)
            let image3 = try await Self.validImageUrl3.downloaded()
            XCTAssertNotNil(image3)
            let notFoundImage = try await Self.notFoundImageUrl.downloaded()
            XCTAssertNotNil(notFoundImage)
        } catch {
            XCTFail(error.localizedDescription)
        }

        do {
            let _ = try await Self.invalidImageUrl.downloaded()
            XCTFail("Download should have thrown an error")
        } catch {
            print("Opeeration failed. Which is expected.")
        }
    }

    func testDownload_FromFakeNetwork_Async() async {
        let stringToDeliver = "example data"
        let fakeSession = MockedURLSession(
            nextError: nil,
            nextData: stringToDeliver.data(using: .utf8)
        )

        do {
            let data = try await Self.fakeResourceUrl1.downloaded(using: fakeSession)
            XCTAssertNotNil(data)
            XCTAssertTrue(data.count > 0)
            
            guard let decodedString = String(data: data, encoding: .utf8) else {
                XCTFail("Resolved data is not expected. Was meant to decode back to a String")
                return
            }

            XCTAssertEqual(decodedString, stringToDeliver)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
