//
// Copyright 2021 Dirk-Willem van Gulik, Ministry of Public Health, the Netherlands.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest
    @testable import base45_swift

    final class base45_swiftTests: XCTestCase {
        func testExample() {
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
            
            // Cause an overflow
            XCTAssertThrowsError(try "ZZZZ".fromBase45())
        }
    }
