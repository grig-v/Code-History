//
//  WelcomView.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 17.04.25.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack{
                    Text("Welcome to the Code History!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(60)
                        Text("The quiz-game that tests your knowledge about history of programming.")
                        .font(.custom("Arial", size: 20))
                        .multilineTextAlignment(.center)
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        BottomTextView(str: "Let's do it!")
                    })
                }
                .foregroundColor(.black)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    WelcomeView()
}
