//
//  RightProfileView.swift
//  CustomServerDrivenUI
//
//  Created by Manish Pandey on 27/07/21.
//

import Foundation
import SwiftUI

protocol ViewModel: Decodable {
    
}

struct RightProfileViewModel: ViewModel {
    let profilePic: String
    let name: String
}

struct RightProfileView: View {
    
    @State var model: RightProfileViewModel
    
    var body: some View {
        HStack {
            Text(model.name)
            Spacer()
            Image(systemName: model.profilePic)
        }
    }
    
}
