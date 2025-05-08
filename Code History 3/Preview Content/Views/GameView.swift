//
//  ContentView.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 25.02.25.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.black)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
        )
    }
}

#Preview {
    GameView()
}
