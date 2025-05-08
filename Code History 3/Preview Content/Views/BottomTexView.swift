//
//  BottomTexView.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 17.04.25.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.headline)
                .bold()
                .padding()
            Spacer()
        } .background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(str: "KEK")
}
