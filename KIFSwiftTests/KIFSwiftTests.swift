//
//  HomeSpec.swift
//  CryptoPricesKIFUITests
//
//  Created by Bliss on 11/1/23.
//

//@testable import Home
import Nimble
import Quick
import KIF

final class HomeSpec: QuickSpec {

    override func spec() {

        describe("The app") {

            describe("its open") {

                it("it shows its ui components") {
                    self.tester().waitForView(
                        withAccessibilityLabel: "Done"
                    )
                }
            }
        }
    }
}


extension QuickSpec {

    func tester(file: String = #file, _ line: Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file: String = #file, _ line: Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}
