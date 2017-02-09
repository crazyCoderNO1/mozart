//
//  MyFirstSpec.swift
//  mozart
//
//  Created by David Kwok Ho Chan on 2/8/17.
//  Copyright © 2017 David Kwok Ho Chan. All rights reserved.
//
import Quick
import Nimble

class MyFirstSpec : QuickSpec {
    override func spec() {
        super.spec()
        
        describe("first test") {
            it("should pass") {
                expect(1).to(equal(1))
            }
        }
        
    }
}
