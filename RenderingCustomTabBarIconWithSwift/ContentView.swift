//
//  ContentView.swift
//  RenderingCustomTabBarIconWithSwift
//
//  Created by San Engineer on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var state: State
    
    var body: some View {
        
        GeometryReader { proxy in
                    VStack(){
                        ZStack{
                            switch state.tabCollection[state.selectionTab].tag {
                            case 1:
                                HomeNonSFValidateView()
                            case 2:
                                HomeSFValidateView()
                            case 3:
                                HomeNonSFValidateView()
                            default :
                                HomeSFValidateView()
                            }
                            
                        }
                        .background(Color.heroColorBg)
                        
                        Spacer()
                        
                        TabBarView()
                            .padding(.bottom, proxy.safeAreaInsets.bottom)
                    }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let heroColorBg = Color("HeroColor")
}
