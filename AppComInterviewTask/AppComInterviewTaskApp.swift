//
//  AppComInterviewTaskApp.swift
//  AppComInterviewTask
//
//  Created by Thahi on 07/12/2021.
//

import SwiftUI

@main
struct AppComInterviewTaskApp: App {
   // @StateObject private var vm = HomeViewModel()
    var body: some Scene {
       
        WindowGroup {
            NavigationView{
            Home()
            }
           // .environmentObject(vm)
        }
    }
}
