//
//  DetailListView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 09/12/2021.
//

import SwiftUI

struct DetailListView: View {
    @ObservedObject var categorykmanager = MovieDetailService()
    var idchange: Int
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea([.all])
            ScrollView{
            VStack{
            TabView{
                Text("sc1")
                    .tabItem{
                        Text("TopRated")
                    }
                Text("sc1")
                    .tabItem{
                        Text("Low Rated")
                    }
               
            }
            .accentColor(.white)
            .padding()
                
           
            List{
                ForEach(categorykmanager.categoryList){ lis in
                    ListRowView(detailCategories: lis)
        
                        //categorykmanager.fetchListData(categoryId: lis)
                }
               
            }
                
            }
               
            }
        }
      
    }
}

struct DetailListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailListView( idchange: 1)
    }
}
