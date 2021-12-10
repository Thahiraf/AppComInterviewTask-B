//
//  UploadView.swift
//  AppComInterviewTask
//
//  Created by Thahi on 09/12/2021.
//

import SwiftUI

struct UploadView: View {
    @State var title: String = ""
    @State var changeProile = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    @State var isSelectedButton = true
   
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
                    .padding(.top,1)
                    
                    TextField("Enter name of movie", text: $title)
                        .foregroundColor(Color.white)
                        
                        //.padding(.vertical)
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray)
                        .frame(height: 2)
                
                    
                    Spacer()
                }
                .padding(.horizontal)
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
                    .padding(.top,1)
                }
                .padding(.horizontal)
                VStack{
                   
                    Button {
                      // changeProile = true
                      //  openCameraRoll = true
                        Text("")
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
                    HStack() {
                        
                        Button {
                            changeProile = true
                             openCameraRoll = true
                        } label: {
                            if changeProile{
                                Image(uiImage: imageSelected)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                            }else{
                            Image(systemName: "camera")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100, alignment: .leading)
                            }
                        }
                        Spacer()
                    }
                    HStack{
                        Button {
                            Text("")
                        } label: {
                            Text("Cancel")
                                .font(.title)
                                .padding()
                                .frame(width: 150, height: 55)
                                .foregroundColor(isSelectedButton ? .black : .white)
                                .background(isSelectedButton ? Color("yellow") : .black)
                                .cornerRadius(20)
                        }
                        Button {
                            Text("")
                        } label: {
                            Text("Confirm")
                                .font(.title)
                                .padding()
                                .frame(width: 150, height: 55)
                                .foregroundColor(isSelectedButton ? .black : .white)
                                .background(isSelectedButton ? Color("yellow") : .black)
                                .cornerRadius(20)
                        }
                        .padding()

                    }
                    
                        
                }
                .padding(.horizontal)
               
                    
                }
          
        }.sheet(isPresented: $openCameraRoll){
            ImagePicker(selectedImage: $imageSelected, sourceType: .photoLibrary)
            //ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
        }
        
    }
}

//struct UploadView_Previews: PreviewProvider {
//    static var previews: some View {
//        UploadView( isSelectedButton: true)
//    }
//}
