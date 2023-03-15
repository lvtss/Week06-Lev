//
//  TravelDetailsView.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import Foundation
import SwiftUI

struct TravelDetailsView: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @ObservedObject var viewModel: TravelDetailsModel

    init(model: TravelModel) {
        viewModel = TravelDetailsModel(model: model)
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    //vstack for images
                    VStack {
                        ZStack(alignment: .top) {
                            Image(viewModel.model.image).resizable()
                                .frame(height: 400).frame(maxWidth: .infinity)
                            HStack {
                                //for back button
                                Button(action: { self.presentationMode.wrappedValue.dismiss() },
                                       label: { Image(image_back).resizable().frame(width: 34, height: 34) })
                                Spacer()
                                //for favorite button
                                Button(action: { viewModel.favouriteMethod() },
                                       label: { Image(fav_icon).resizable().frame(width: 26, height: 26) })
                            }.padding(.horizontal, 24).padding(.top, 46)
                        }
                        Group {
                            HStack {
                                Text(viewModel.model.promo).modifier(UrbansitFont(.bold, size: 24)).lineLimit(1)
                                    .foregroundColor(Color.text_primary_color)
                                Spacer()
                                AttributeView(isNew: viewModel.model.attribute == "Best Seller")
                            }.padding(.vertical, 8)
                            
                            HStack(alignment: .center) {
                                HStack(alignment: .center, spacing: 2) {
                                    Image(IMAGE_LMTD_ICON).resizable().frame(width: 24, height: 24)
                                    Text("\(viewModel.model.location)").modifier(UrbansitFont(.medium, size: 14))
                                        .foregroundColor(Color.orange).padding(.top, 2)
                                }
                                Spacer()
                                //Text("\(viewModel.model.price) yrs | \(viewModel.model.promo)").modifier(UrbansitFont(.regular, size: 14))
                                    .lineLimit(1).foregroundColor(Color.text_primary_color)
                            }
                            
                            HStack {
                                Text("\(viewModel.model.price)").modifier(UrbansitFont(.bold, size: 24))
                                    .foregroundColor(Color.text_primary_color)
                                Text("bought by 50+ customers today").modifier(UrbansitFont(.regular, size: 14))
                                    .foregroundColor(Color.text_primary_color)
                                Spacer()
                            }.padding(.leading, 6).padding(.top, 2)
                            
                            VStack(spacing: 16) {
                                //Trip details
                                HStack {
                                    Text("What to expect").modifier(UrbansitFont(.bold, size: 20))
                                        .foregroundColor(Color.accent_color)
                                    Spacer()
                                }
                                Text(viewModel.details).modifier(UrbansitFont(.regular, size: 18))
                                    .foregroundColor(Color.text_primary_color)
                            }.padding(.vertical, 16)
                            
                            //Reviews
                            VStack(spacing: 16) {
                                HStack {
                                    Text("Reviews").modifier(UrbansitFont(.bold, size: 20))
                                        .foregroundColor(Color.accent_color)
                                    Spacer()
                                }
                                HStack(spacing: 8) {
                                    //TravelInfoView(primary: "\(viewModel.model.price)", secondary: "")
                                    //TravelInfoView(primary: "Family-friendly", secondary: "")
                                    TravelInfoView(primary: "\(viewModel.model.reviews)", secondary: "reviews")
                                }
                            }.padding(.vertical, 16)
                            
                                                        VStack(spacing: 16) {
                                                            HStack {
                                                                Text("Service Provider").modifier(UrbansitFont(.bold, size: 18))
                                                                    .foregroundColor(Color.text_primary_color)
                                                                Spacer()
                                                            }
                                                            ServiceProviderView(name: viewModel.model.serviceProvider.name, about: viewModel.model.serviceProvider.about, contactUsMethod: viewModel.contactUsMethod)
                                                        }.padding(.vertical, 16)
                            
                                                        //Buy now button
                                                        Button(action: { viewModel.buyMethod() },
                                                               label: { Text("BUY NOW").modifier(UrbansitFont(.medium, size: 16)).foregroundColor(.white) })
                                                            .frame(height: 50).frame(maxWidth: .infinity)
                                                            .background(Color.black).cornerRadius(8)
                                                            .padding(.vertical, 24)
                            
                                                    }.padding(.horizontal, 16).padding(.top, 8)
                                                }.background(Color.primary_color)
                            
                                                Spacer()
                                                Spacer().frame(height: 150)
                                            }
                                            .edgesIgnoringSafeArea(.all)
                                            .navigationBarHidden(true)
                                        }
                                    }
                                    .navigationViewStyle(StackNavigationViewStyle())
                                    .navigationBarHidden(true)
                                    .navigationBarBackButtonHidden(true)
                        }
                    }
                    
                    struct ServiceProviderView: View {
                        var name: String, about: String
                        var contactUsMethod: () -> ()
                        var body: some View {
                            //HStack {
                    //            Image(image).resizable().scaledToFill().frame(width: 60, height: 60).cornerRadius(30)
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(name).modifier(UrbansitFont(.medium, size: 16))
                                        .foregroundColor(Color.text_primary_color)
                                    Text(about).modifier(UrbansitFont(.regular, size: 14))
                                        .foregroundColor(Color(hex: "828282"))
                                }.padding(.leading, 2)
                             //Spacer()
//                                Button(action: { self.contactUsMethod() },
//                                       label: { Image(IMAGE_LMTD_ICON).resizable().frame(width: 20, height: 20) })
//                                    .frame(width: 45, height: 45).background(Color.blue).cornerRadius(25)
                            }
                        }
                    //}
                    
                    struct TravelInfoView: View {
                        var primary: String, secondary: String
                        var body: some View {
                            HStack {
                                Spacer()
                                VStack(spacing: 6) {
                                    Text(primary).modifier(UrbansitFont(.bold, size: 24))
                                        .foregroundColor(Color.text_primary_color)
                                    Text(secondary).modifier(UrbansitFont(.regular, size: 16))
                                        .foregroundColor(Color(hex: "828282"))
                                }
                                Spacer()
                            }
                            .padding(.vertical, 8)
                            .background(Color.secondary_color)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "DDDDDD"), lineWidth: 0.25)
                            )
                        }
                    }
                

struct TravelDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TravelDetailsView(model: TravelData.destinations[0])
        }
    }
}

