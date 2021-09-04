//
//  HomeView.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
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
                                Text("Adopt a new friend near you!").modifier(SailecFont(.regular, size: 18))
                                    .foregroundColor(Color.text_primary_color).padding(.top, 4)
                            }
                            Spacer()
                        }
                        Text("Nearby results").modifier(SailecFont(.bold, size: 14))
                            .foregroundColor(Color.text_primary_color)
                            .padding(.top, 24).padding(.bottom, 8)
                        ForEach(viewModel.dogsList) { model in
                            NavigationLink(destination: DetailsView(model: model), label: {
                                HomeListModelView(image: model.image, name: model.name, age: model.age,
                                                  about: model.about, location: model.location, gender: model.gender).padding(.bottom, 4)
                            })
                        }
                    }
                    Spacer()
                    Spacer().frame(height: 150)
                }
                .padding(.horizontal, 16).padding(.top, 1)
                .navigationBarHidden(true)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeListModelView: View {
    
    var image: String, name: String, age: Int, about: String, location: String, gender: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(image)
                .resizable().scaledToFill()
                .frame(width: 100, height: 100).cornerRadius(16)
            VStack(alignment: .leading, spacing: 12) {
                Text(name).lineLimit(1).modifier(SailecFont(.medium, size: 20)).foregroundColor(Color.text_primary_color)
                Text("\(age) yrs | \(about)").lineLimit(1).modifier(SailecFont(.regular, size: 14)).foregroundColor(Color.text_primary_color)
                HStack(alignment: .center, spacing: 2) {
                    Image(IMAGE_LOC_ICON).resizable().frame(width: 20, height: 20)
                    Text("\(location) away").modifier(SailecFont(.regular, size: 14))
                        .foregroundColor(Color.text_primary_color).padding(.top, 2)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                GenderView(isMale: gender == "male")
                Spacer()
                Text("12 min ago").modifier(SailecFont(.regular, size: 12))
                    .foregroundColor(Color.text_primary_color)
            }.padding(.vertical, 4)
        }
        .padding(16)
        .background(Color.secondary_color)
        .cornerRadius(16)
    }
}

struct GenderView: View {
    var isMale: Bool
    var body: some View {
        Text(isMale ? "Male" : "Female").modifier(SailecFont(.regular, size: 12))
            .foregroundColor(isMale ? Color.blue_color : Color.red_color)
            .padding(.horizontal, 18).padding(.vertical, 8)
            .background(isMale ? Color.blue_color_trans : Color.red_color_trans)
            .cornerRadius(12)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
