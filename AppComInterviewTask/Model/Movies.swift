//
//  Movies.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//
import Foundation
import SwiftUI

/*
 {
     "success": true,
     "movie_categories": [
         {
             "category_id": 1,
             "category_name": "Adventure",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/adventure.jpg"
         },
         {
             "category_id": 2,
             "category_name": "Action",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/actions.jpg"
         },
         {
             "category_id": 3,
             "category_name": "Thriller",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/thriller.jpg"
         },
         {
             "category_id": 4,
             "category_name": "Comedy",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/comedy.jpg"
         },
         {
             "category_id": 5,
             "category_name": "Horror",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/horror.jpg"
         },
         {
             "category_id": 6,
             "category_name": "Romance",
             "category_image": "https://appcomsolution.com/ios_test/public/categoryImages/romance.jpg"
         }
     ]
 }

 */
struct Movies: Codable {
    let movie_categories: [MovieCategory]
    
}
struct MovieCategory:Identifiable, Codable{
// MARK: - MovieCategory
        let id: Int
        let categoryName: String
        let categoryImage: String
    
    
    
    enum CodingKeys: String, CodingKey{
        case id = "category_id"
        case categoryName = "category_name"
        case categoryImage = "category_image"
       
    }

}

