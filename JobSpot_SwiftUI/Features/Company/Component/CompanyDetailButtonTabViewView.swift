//
//  CompanyDetailButtonTabViewView.swift
//  JobSpot_SwiftUI
//
//  Created by Enigma Kod on 13/02/2024.
//

import SwiftUI

struct CompanyDetailButtonTabViewView: View {
    @State private var choice = "About Us"
    let tabs = ["About Us", "Jobs"]

    init() {
        UISegmentedControl.appearance().backgroundColor = .white
        UISegmentedControl.appearance().setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(fromHex: "FCA34D")!
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }

    var body: some View {
        VStack {
            HStack {
                self.actionButton(title: "Follow", image: "plus")
                Spacer().frame(width: 20)
                self.actionButton(title: "Visit website", image: "square.and.arrow.up")
            }

            Spacer().frame(height: 30)

            Picker("", selection: self.$choice) {
                ForEach(self.tabs, id: \.self) { TextView(text: $0) }
            }
            .pickerStyle(.segmented)
            .frame(height: 45)

            Spacer().frame(height: 20)
            stateBody()
        }
        .padding(.horizontal, 16)
    }

    @ViewBuilder private func stateBody() -> some View {
        if choice == tabs.first {
            CompanyDetailAboutView()
        } else if choice == tabs[1] {
            VStack {}
        } else { VStack {} }
    }

    func actionButton(title: String, image: String) -> some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 15, height: 15)
            Spacer().frame(width: 5)
            TextView(text: title, size: 12, color: Color.red)
        }
        .foregroundColor(Color.red)
        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 40)
        .background(Color(uiColor: UIColor(fromHex: "FFB2B2")!).opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

extension UISegmentedControl {
    override open func didMoveToSuperview() {
        super.didMoveToSuperview()
        setContentHuggingPriority(.defaultLow, for: .vertical)
    }
}
