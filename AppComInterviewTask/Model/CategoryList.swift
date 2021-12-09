//
//  CategoryList.swift
//  AppComInterviewTask
//
//  Created by Thahi on 09/12/2021.
//

import Foundation

/*
 {
    "success": true,
    "movies": [
        {
            "movie_id": 14,
            "category_id": 4,
            "movie_name": "Airplane",
            "movie_rating": 4,
            "movie_description": "A man afraid to fly must ensure that a plane lands safely after the pilots become sick.",
            "movie_image": "https://appcomsolution.com/ios_test/public/movieImages/14_MV5BZjA3YjdhMWEtYjc2Ni00YzVlLWI0MTUtMGZmNTJjNmU0Yzk2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg"
        },
    ]
}

 */
struct MovieDetailList: Codable{
    let movies: [MovieCategoryList]
}

struct MovieCategoryList:Identifiable, Codable{
    let id: Int
    let categoryId: Int
    let movieName: String
    let movieRating: Int
    let movieDescription: String
    let movieImage: String


enum CodingKeys: String, CodingKey{
    case id = "movie_id"
    case categoryId = "category_id"
    case movieName = "movie_name"
    case movieRating = "movie_rating"
    case movieDescription = "movie_description"
    case movieImage = "movie_image"
}
}
