//
//  DesignKit.swift
//  DesignKit
//
//  Created by ZKMax01 on 12/04/2025.
//

import SwiftUI

struct Preview: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Colors Surface")) {
                    Text("color/surface/x-high")
                        .foregroundStyle(Color.App.Surface.xHigh)
                        .applyLabelSStyle()
                    Text("color/surface/x-low")
                        .foregroundStyle(Color.App.Surface.xLow)
                        .applyLabelSStyle()
                    Text("color/surface/brand")
                        .foregroundStyle(Color.App.Surface.brand)
                        .applyLabelSStyle()
                    Text("color/surface/danger")
                        .foregroundStyle(Color.App.Surface.danger)
                        .applyLabelSStyle()
                    Text("color/surface/danger-variant")
                        .foregroundStyle(Color.App.Surface.dangerVariant)
                        .applyLabelSStyle()
                    Text("color/surface/warning")
                        .foregroundStyle(Color.App.Surface.warning)
                        .applyLabelSStyle()
                    Text("color/surface/warning-variant")
                        .foregroundStyle(Color.App.Surface.warningVariant)
                        .applyLabelSStyle()
                }
                Section(header: Text("Colors Content")) {
                    Text("color/content/on-neutral/xx-high")
                        .foregroundStyle(Color.App.Content.OnNeutral.xxHigh)
                        .applyLabelSStyle()
                    Text("color/content/on-neutral/medium")
                        .foregroundStyle(Color.App.Content.OnNeutral.medium)
                        .applyLabelSStyle()
                    Text("color/content/on-neutral/low")
                        .foregroundStyle(Color.App.Content.OnNeutral.low)
                        .applyLabelSStyle()
                    Text("color/content/on-neutral/danger")
                        .foregroundStyle(Color.App.Content.OnNeutral.danger)
                        .applyLabelSStyle()
                    Text("ccolor/content/on-neutral/warning")
                        .foregroundStyle(Color.App.Content.OnNeutral.warning)
                        .applyLabelSStyle()
                }
                Section(header: Text("Colors State")) {
                    Text("color/state/default/hover")
                        .foregroundStyle(Color.App.State.Default.hover)
                        .applyLabelSStyle()
                    Text("color/state/default/focus")
                        .foregroundStyle(Color.App.State.Default.focus)
                        .applyLabelSStyle()
                }
                Section(header: Text("Label Texts")) {
                    Text("Label M").applyLabelMStyle()
                    Text("Label S").applyLabelSStyle()
                }
                Section(header: Text("Body Texts")) {
                    Text("Body M").applyLabelMStyle()
                }
                Section(header: Text("Inputs")) {
                    VStack(alignment: .leading) {
                        Text("Username")
                            .applyLabelSStyle()
                        TextInput(
                            text: $username,
                            placeholder: "Username"
                        )
                    }
                    VStack(alignment: .leading) {
                        Text("Password")
                            .applyLabelSStyle()
                        PasswordInput(
                            text: $password,
                            placeholder: "Password",
                            passwordMinLength: 8,
                            validationCharacterMessage: "Password must be at least \(8) characters long.",
                            validationSymbolMessage: "Password must include at least one uppercase letter and one symbol."
                        )
                    }
                    
                }
            }
            .navigationTitle("DesignKit")
        }
    }
}

#Preview {
    Preview()
}

