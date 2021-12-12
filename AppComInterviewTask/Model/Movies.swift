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

