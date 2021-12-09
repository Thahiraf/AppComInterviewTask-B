//
//  UploadView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 09/12/2021.
//

import SwiftUI

struct UploadView: View {
    @State var title: String = ""
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)

            ScrollView{
                VStack(alignment: .leading){
                    Text("Adding To Action")
                        .font(.title)
                    .foregroundColor(Color("yellow"))
                    .padding(.vertical)
                    Divider()
                    Text("Movie Title")
                        .font(.title2)
                    .foregroundColor(Color("yellow"))
                    TextField("Enter name of movie", text: $title)
                        .foregroundColor(Color.gray)
                       // .padding(.vertical)
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray)
                        .frame(height: 2)
                    Text("Description")
                        .font(.title2)
                    .foregroundColor(Color("yellow"))
                    .padding(.top)
                    
                    TextField("Enter name of movie", text: $title)
                        .foregroundColor(Color.white)
                        
                        //.padding(.vertical)
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray)
                        .frame(height: 2)
                
                    
                    Spacer()
                }
                .padding()
                VStack(alignment: .leading){
                    Text("Rating")
                        .font(.title2)
                    .foregroundColor(Color("yellow"))
                    TextField("Enter name of movie", text: $title)
                        .foregroundColor(Color.gray)
                       // .padding(.vertical)
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray)
                        .frame(height: 2)
                    Text("Upload Image")
                        .font(.title)
                    .foregroundColor(Color("yellow"))
                    .padding(.vertical)
                }
                .padding(.horizontal)
                VStack{
                   
                    Button {
                        Text("hi")
                    } label: {
                        Text("Choose Image")
                            .font(.title2)
                            .foregroundColor(Color.white)
                    }
                    
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                   
                    .border(.white)
                    .cornerRadius(3)
                   
                        
                }
                .padding(.horizontal)
               
                    
                }
          
        }
        
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
