//
//  MicrophoneService.swift
//  mozart
//
//  Created by David Kwok Ho Chan on 2/8/17.
//  Copyright © 2017 David Kwok Ho Chan. All rights reserved.
//
import Quick
import Nimble

class MicServiceSpec : QuickSpec {
    override func spec() {
        super.spec()
        describe("#Sound Recording Action") {
            it("should be able to record sounds") {
                let implemented = false
                expect(implemented).to(beTrue())
            }
        }
        describe("#Determine Frequency") {
            it("should take in a sound and output frequency in decimal") {
                let implemented = false
                expect(implemented).to(beTrue())
            }
        }
        describe("#Note Detected Listener") {
            it("should fire if a note is detected") {
                let implemented = false
                expect(implemented).to(beTrue())
            }
        }
    }
}
