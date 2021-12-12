//
//  DetailListView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 08/12/2021.
//

import SwiftUI

struct ListRowView: View {
   // @ObservedObject var categorykmanager = MovieDetailService()
    let detailCategories: MovieCategoryList
    var body: some View {
        
        VStack{
            HStack(alignment: .top){
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 120, height: 150)
                    .padding()
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(detailCategories.movieName)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("yellow"))
                    
                    HStack {
                        ForEach(0..<detailCategories.movieRating) { ind in
                            Image(systemName: "star.fill")
                                .font(.title3)
                                .padding(.top,1)
    //                          .foregroundColor(index <= Int(item.item_rating) ?? 0 ? Color("pink") : .gray)
                        }
                    }
                    Text("Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsum")
                        .font(.callout)
                        .padding(.top,5)
                        .foregroundColor(.black)
                }
                
                    
                Spacer(minLength: 0)
            }
        }
    }
}

