//
//  ContentView.swift
//  Restart
//
//  Created by Ambrose V on 11/01/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.5), value: isOnboardingViewActive)
        
    }
}

#Preview {
    ContentView()
}
