//
//  HomeView.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Hey Sameer,").modifier(SailecFont(.bold, size: 24))
                                    .foregroundColor(Color.text_primary_color).padding(.top, 16)
                                Text("Adopt a new near you!").modifier(SailecFont(.regular, size: 18))
                                    .foregroundColor(Color.text_primary_color).padding(.top, 4)
                            }
                            Spacer()
                        }
                        Text("Nearby results").modifier(SailecFont(.bold, size: 14))
                            .foregroundColor(Color.text_primary_color)
                            .padding(.top, 24).padding(.bottom, 8)
                    }
                }
                .padding(.horizontal, 16).padding(.top, 1)
                .navigationBarHidden(true)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
