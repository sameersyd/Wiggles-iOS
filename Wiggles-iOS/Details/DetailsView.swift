//
//  DetailsView.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Nearby results").modifier(SailecFont(.bold, size: 14))
                            .foregroundColor(Color.text_primary_color)
                            .padding(.top, 24).padding(.bottom, 8)
                    }
                    Spacer()
                    Spacer().frame(height: 150)
                }
                .padding(.horizontal, 16).padding(.top, 1)
                .navigationBarHidden(true)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
