//
//  LeftProfileView.swift
//  CustomServerDrivenUI
//
//  Created by Manish Pandey on 27/07/21.
//

import SwiftUI
import Foundation

struct LeftProfileViewModel: ViewModel {
    let profilePic: String
    let name: String
}

struct LeftProfileView: View {
    
    @State var model: LeftProfileViewModel
    
    var body: some View {
        HStack {
            Image(systemName: model.profilePic)
            Spacer()
            Text(model.name)
        }
    }
    
}
