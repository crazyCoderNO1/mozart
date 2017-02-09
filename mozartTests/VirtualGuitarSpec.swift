//
//  GuitarSpec.swift
//  mozart
//
//  Created by David Kwok Ho Chan on 2/8/17.
//  Copyright © 2017 David Kwok Ho Chan. All rights reserved.
//
import Quick
import Nimble
@testable import mozart

class VirtualGuitarSpec : QuickSpec {
    override func spec() {
        super.spec()
        describe("#get frequency for string") {
            it("returns 110.00 for A2 String") {
                let vg = VirtualGuitar()
                let result = vg.getFrequencyForString(input: VirtualGuitar.GuitarString.A2)
                expect(result).to(equal(110.00))
            }
        }
        describe("#getClosestString") {
            it("should return G3 when input is 195.00") {
                let input = 195.00
                let vg = VirtualGuitar()
                let result = vg.getClosestString(input: input)
                let expected = VirtualGuitar.GuitarString.G3
                expect(result).to(equal(expected))
            }
            it("should return E4 when input is 330.00") {
                let input = 330.00
                let vg = VirtualGuitar()
                let result = vg.getClosestString(input: input)
                let expected = VirtualGuitar.GuitarString.E4
                expect(result).to(equal(expected))
            }
        }
    }
}

