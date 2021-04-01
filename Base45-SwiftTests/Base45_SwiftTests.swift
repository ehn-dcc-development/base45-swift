//
//  Base45_SwiftTests.swift
//  Base45-SwiftTests
//
//  Created by Dirk-Willem van Gulik on 01/04/2021.
//

import XCTest
@testable import Base45_Swift

class Base45_SwiftTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // examples from https://datatracker.ietf.org/doc/draft-faltstrom-base45/
        XCTAssertEqual( try "%69 VD92EX0".fromBase45(), "Hello!!".data(using: .utf8));
        XCTAssertEqual( try "UJCLQE7W581".fromBase45(), "base-45".data(using: .utf8));
        XCTAssertEqual( try "QED8WEX0".fromBase45(), "ietf!".data(using: .utf8));

        // Ignore upper/lowercase - they are equal
        XCTAssertEqual( try "UjClqe7w581".fromBase45(), "base-45".data(using: .utf8));

        XCTAssertEqual( "%69 VD92EX0", "Hello!!".data(using: .utf8)?.toBase45());
        XCTAssertEqual( "UJCLQE7W581", "base-45".data(using: .utf8)?.toBase45());
        XCTAssertEqual( "QED8WEX0", "ietf!".data(using: .utf8)?.toBase45());
        XCTAssertEqual( "", "".data(using: .utf8)?.toBase45());
        
        // Try some illegal chars and an illegal length.
        //
        XCTAssertThrowsError(try "!^&".fromBase45())
        XCTAssertThrowsError(try "AAAA".fromBase45())
    }
}
