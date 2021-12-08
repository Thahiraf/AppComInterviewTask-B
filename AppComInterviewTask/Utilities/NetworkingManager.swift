//
//  NetworkingManager.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//
import Foundation
import SwiftUI


class NetworkingManager: ObservableObject{
    
    @Published var category = [MovieCategory]()
    
    func fetchData(){
        if let url = URL(string: "https://appcomsolution.com/ios_test/api/get_all_categories"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                   let datas = try decoder.decode(Movies.self, from: safeData )
                            DispatchQueue.main.async {
                                self.category = datas.movie_categories
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
