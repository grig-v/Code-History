//
//  ScoreView.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 28.04.25.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("**You passed the quiz!**")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 40)
                Text("Your final score is:")
                Text("\(viewModel.percentage)/100")
                    .font(.largeTitle)
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }
                .font(.title)
                Spacer()
                Button(action: {}) {
                    NavigationLink(destination: WelcomeView(),
                                   label: {
                        BottomTextView(str: "Go back to the welcome screen")
                    })
                }
            }
            .foregroundColor(.black)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
}
