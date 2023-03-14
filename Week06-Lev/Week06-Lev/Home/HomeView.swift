//
//  HomeView.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
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
                                Text("Hi Jane,").modifier(UrbansitFont(.bold, size: 24))
                                    .foregroundColor(Color.text_primary_color).padding(.top, 16)
                                Text("Recommended for you").modifier(UrbansitFont(.regular, size: 18))
                                    .foregroundColor(Color.text_primary_color).padding(.top, 4)
                            }
                            Spacer()
                        }
                        Text("6 results").modifier(UrbansitFont(.bold, size: 14))
                            .foregroundColor(Color.text_primary_color)
                            .padding(.top, 24).padding(.bottom, 8)
                        ForEach(viewModel.travelList) { model in
                            NavigationLink(destination: TravelDetailsView(model: model), label: {
                                HomeListModelView(image: model.image, promo: model.promo, activity: model.activity,
                                                  price: model.price, location: model.location, attribute: model.attribute, reviews: model.reviews ).padding(.bottom, 4)
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

    
    var image: String, promo: String, activity: String, price: String, location: String, attribute: String, reviews: Double

    var body: some View {
        HStack(spacing: 12) {
            Image(image)
                .resizable().scaledToFill()
                .frame(width: 100, height: 100).cornerRadius(16)
            VStack(alignment: .leading, spacing: 12) {
                Text(promo).lineLimit(1).modifier(UrbansitFont(.medium, size: 20)).foregroundColor(Color.text_primary_color)
                Text("\(activity) yrs | \(price)").lineLimit(1).modifier(UrbansitFont(.regular, size: 14)).foregroundColor(Color.text_primary_color)
                HStack(alignment: .center, spacing: 2) {
                    Image(IMAGE_LMTD_ICON).resizable().frame(width: 20, height: 20)
                    Text("\(attribute) away").modifier(UrbansitFont(.regular, size: 14))
                        .foregroundColor(Color.text_primary_color).padding(.top, 2)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                AttributeView(isNew: attribute == "male")
                Spacer()
                Text("12 min ago").modifier(UrbansitFont(.regular, size: 12))
                    .foregroundColor(Color.text_primary_color)
            }.padding(.vertical, 4)
        }
        .padding(16)
        .background(Color.secondary_color)
        .cornerRadius(16)
    }
}

struct AttributeView: View {
    var isNew: Bool
    var body: some View {
        Text(isNew ? "Best Seller" : "Good Deal").modifier(UrbansitFont(.regular, size: 12))
            .foregroundColor(isNew ? Color.blue_color : Color.red_color)
            .padding(.horizontal, 18).padding(.vertical, 8)
            .background(isNew ? Color.blue_color_trans : Color.red_color_trans)
            .cornerRadius(12)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

