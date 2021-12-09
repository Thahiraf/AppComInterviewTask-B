//
//  MovielDetailService.swift
//  AppComInterviewTask
//
//  Created by Thahi on 09/12/2021.
//

import Foundation
import SwiftUI


class MovieDetailService: ObservableObject{
    
    @Published var categoryList = [MovieCategoryList]()
    
    
   
    func fetchListData(categoryId: Int){
        
        let categoryUrl = "https://appcomsolution.com/ios_test/api/get_category_movies?category_id=\(categoryId)"
        
        if let url = URL(string: categoryUrl){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                   let datas = try decoder.decode(MovieDetailList.self, from: safeData )
                            DispatchQueue.main.async {
                                self.categoryList = datas.movies
                            }
                            
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    
}
