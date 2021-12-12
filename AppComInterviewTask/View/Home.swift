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
    @State var showcategoryid: Bool = false
    @ObservedObject var categorykmanager = MovieDetailService()
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea([.all])

        NavigationView{
            ScrollView{
        LazyVGrid(columns: Array(repeating: GridItem(.adaptive(minimum: 90),spacing:5), count: 2), spacing: 10){
            ForEach(networkmanager.category){ item in
                //CardView
               CardView(movieCategories: item)
                    .onTapGesture {
                        if showcategoryid{
                            NavigationLink("") {
                                DetailListView(idchange: item.id)
                            }
                            
                        }
                    }

            }
        }
        .padding()
        }
//        .onAppear{
//            self.networkmanager.fetchData()
//        }
        .navigationBarHidden(true)
        .background(Color.black)
    }
       
    }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
