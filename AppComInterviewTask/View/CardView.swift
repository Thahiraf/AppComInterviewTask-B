//
//  CardView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var networkmanager = NetworkingManager()
    let movieCategories: MovieCategory
    var body: some View {
        VStack(alignment: .leading){
            
            URLImage(urlString: movieCategories.categoryImage)
            Text(movieCategories.categoryName)
                .fontWeight(.bold)
                .foregroundColor(Color("yellow"))
               
        }
        .padding(6)
        //giving hero effect for colors also
        .background(Color.black)
        .cornerRadius(10)
       
    }
}
