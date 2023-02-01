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
                    self.tester().wait(forTimeInterval: 0.01)
                    await self.checkHello()
//                    self.tester().wait(forTimeInterval: 0.01)
                    await self.showAlert()
//                    self.tester().wait(forTimeInterval: 0.01)
                    await self.closeAlert()
                    self.tester().wait(forTimeInterval: 1.01)
                    await self.checkNoAlert()
                }
            }
        }
    }

    @MainActor
    func checkHello() {
        self.tester().waitForView(withAccessibilityLabel: "Hello, world!")
    }

    @MainActor
    func showAlert() {
        self.tester().tapView(withAccessibilityLabel: "Show")
    }

    @MainActor
    func closeAlert() {
        self.tester().tapView(withAccessibilityLabel: "Close")
    }

    @MainActor
    func checkNoAlert() {
        self.tester().waitForAbsenceOfView(withAccessibilityLabel: "OK")
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
