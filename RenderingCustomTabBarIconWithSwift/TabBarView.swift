//
//  TabBarView.swift
//  RenderingCustomTabBarIconWithSwift
//
//  Created by San Engineer on 22/12/21.
//

import Foundation
import UIKit
import SwiftUI

struct TabBarView: View {
    
    @EnvironmentObject var state: State
    
    var body: some View {
        HStack {
            ForEach(0..<(self.state.tabCollection.count)){ int in
                
                Button {
                    self.state.selectionTab = int
                } label: {
                    VStack(alignment: .center, spacing: 4) {
                        
                        let fontType = AnyView(Image(self.state.selectionTab == int ? self.state.tabCollection[int].tabActive : self.state.tabCollection[int].tabDeactive)
                                                .font(.system(size:25))
                                                .foregroundColor(Color.black))
                        
                        let imageType = AnyView(Image(self.state.selectionTab == int ? self.state.tabCollection[int].tabActive : self.state.tabCollection[int].tabDeactive)
                                                .resizable()
                                                .frame(width:25, height:25))
                        
                        state.tabCollection[int].typeImage == "Font" ? fontType : imageType
        
                        Text(self.state.tabCollection[int].tabName)
                            .font(Font.system(size:10, weight: self.state.selectionTab == int ? .black : .regular))
                            .foregroundColor(.black)
                    }
                }
                .frame(width: 60)
                
                if int != (state.tabCollection.endIndex - 1) {
                    Spacer()
                }

            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 14)
    }
}
