//
//  ProfileScreen.swift
//  swiftui_form_data
//
//  Created by Ivan Ivanov on 28.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

/////create style
//struct ThemeTextField: TextFieldStyle {
//    public func _body(configuration: TextField<Self._Label>) -> some View {
//        configuration
//            .padding(10.0)
//            .background(Color.red)
//            .cornerRadius(5)
//    }
//}

struct ProfileScreen: View {
    @State private var profile = ProfileModel()
    
    var body: some View {
        NavigationView {
            Form {
                Text("Basic Information")
                Section {
                    TextField("First name", text: $profile.firstName)
                    TextField("Last name", text: $profile.lastName)
                    TextField("Age", text: $profile.age)
                }
                Section {
                    ProfileView(profile: profile)
                }
            }
            .textFieldStyle(ThemeTextField())
        .navigationBarTitle(Text("Profile"))
            .navigationBarItems(trailing: Button(action:
            {self.submit()}){
                Text("Submit ")
            })
        }
    
    }
    
    private func submit() {
        UserService.instance.saveProfile(profile: profile)
        profile = ProfileModel()
        //show next screen
    }
}

struct ProfileView: View {
    var profile: ProfileModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("First Name: \(profile.firstName)")
            Text("Last Name: \(profile.lastName)")
            Text("Age: \(profile.age)")
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
    ProfileScreen()
    }
}
