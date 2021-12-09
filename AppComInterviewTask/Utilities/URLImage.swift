//
//  URLImage.swift
//  AppComInterviewTask
//
//  Created by Thahi on 08/12/2021.
//

import Foundation
import SwiftUI

struct URLImage: View{
  
    
    let urlString: String
    @State var data : Data?
    
    var body: some View{
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
               .frame(width: 120, height: 120)
               .padding(.top,10)
               .cornerRadius(10)
        }else{
            Image(systemName: "camera")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 70)
                .background(Color.black)
                .onAppear{
                    fetchImage()
                }
        }
    }
    private func fetchImage(){
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
