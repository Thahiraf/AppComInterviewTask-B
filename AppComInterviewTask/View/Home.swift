//
//  Home.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//

import SwiftUI

struct Home: View {
  //  @EnvironmentObject private var vm : HomeViewModel
    @ObservedObject var networkmanager = NetworkingManager()
    
    var body: some View {
//        NavigationView{
//
//            List(networkmanager.category){ cate in
//                Text(cate.categoryName)
//            }
//            .background(Color.red)
//
//        }
//        .onAppear{
//            self.networkmanager.fetchData()
//        }
//        //angela
      
        NavigationView{
            ScrollView{
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2), spacing: 25){
            ForEach(networkmanager.category){ item in
                //CardView
               CardView(movieCategories: item)

            }
        }
        .padding()
        }
        .onAppear{
            self.networkmanager.fetchData()
        }
        
    }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
