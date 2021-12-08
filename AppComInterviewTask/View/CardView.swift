//
//  CardView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//

import SwiftUI

struct CardView: View {
    let movieCategories: MovieCategory
    var body: some View {
        VStack(alignment: .leading){
            Image(movieCategories.categoryImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top,30)
                .padding(.bottom)
                .padding(.horizontal, 10)
                .cornerRadius(10)
            
            Text(movieCategories.categoryName)
                .fontWeight(.bold)
                .foregroundColor(.black)
               
        }
        .padding()
        //giving hero effect for colors also
        .background(Color.gray
        )
        .cornerRadius(15)
       
    }
}
