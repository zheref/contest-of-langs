//
//  Challenge6Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/28/24.
//

import XCTest

final class Challenge6Tests: XCTestCase {

    private static let validImageUrl1 = URL(string: "https://picsum.photos/300/200")! // 3:2
    private static let validImageUrl2 = URL(string: "https://picsum.photos/640/480")! // 4:3
    private static let validImageUrl3 = URL(string: "https://picsum.photos/1920/1080")! // 16:9
    private static let notFoundImageUrl = URL(string: "https://picsum.photos/notfound")! // Not Found!
    private static let invalidImageUrl = URL(string: "https://picsum.never/never")! // THROWS!

    func testDownloadImage() async {
        do {
            let image1 = try await downloadImage(fromURL: Self.validImageUrl1)
            XCTAssertNotNil(image1)
            let image2 = try await downloadImage(fromURL: Self.validImageUrl2)
            XCTAssertNotNil(image2)
            let image3 = try await downloadImage(fromURL: Self.validImageUrl3)
            XCTAssertNotNil(image3)
            let notFoundImage = try await downloadImage(fromURL: Self.notFoundImageUrl)
            XCTAssertNil(notFoundImage)
        } catch {
            XCTFail(error.localizedDescription)
        }

        do {
            let _ = try await downloadImage(fromURL: Self.invalidImageUrl)
            XCTFail("Download should have thrown an error")
        } catch {
            print("Opeeration failed. Which is expected.")
        }
    }

    func testGreatCommonDivisor() {
        XCTAssertEqual(greatestCommonDivisor(from: 15, and: 5), 5)
        XCTAssertEqual(greatestCommonDivisor(from: 17, and: 4), 1)
        XCTAssertEqual(greatestCommonDivisor(from: 0, and: 20), 20)
        XCTAssertEqual(greatestCommonDivisor(from: 34, and: 0), 34)
        XCTAssertEqual(greatestCommonDivisor(from: 0, and: 0), 0)
        XCTAssertEqual(greatestCommonDivisor(from: -10, and: 5), 5)
        XCTAssertEqual(greatestCommonDivisor(from: -25, and: -5), 5)
        XCTAssertEqual(greatestCommonDivisor(from: 123456, and: 7890), 6)
    }

    func testCalculateAspectRatio() async throws {
        let aspectRatio1 = try await calculateAspectRatio(fromURL: Self.validImageUrl1)
        XCTAssertEqual(aspectRatio1!.w, 3)
        XCTAssertEqual(aspectRatio1!.h, 2)

        let aspectRatio2 = try await calculateAspectRatio(fromURL: Self.validImageUrl2)
        XCTAssertEqual(aspectRatio2!.w, 4)
        XCTAssertEqual(aspectRatio2!.h, 3)

        let aspectRatio3 = try await calculateAspectRatio(fromURL: Self.validImageUrl3)
        XCTAssertEqual(aspectRatio3!.w, 16)
        XCTAssertEqual(aspectRatio3!.h, 9)
    }

}
