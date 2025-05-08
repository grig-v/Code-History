//
//  ChoiceTextView.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 27.03.25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
        
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
