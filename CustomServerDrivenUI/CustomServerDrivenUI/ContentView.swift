//
//  ContentView.swift
//  CustomServerDrivenUI
//
//  Created by Manish Pandey on 27/07/21.
//

import SwiftUI

let test = LeftProfileViewModel(profilePic: "person.crop.circle", name: "John Doe")

struct ContentView: View {
    
    @State var model: [LeftProfileViewModel]
    
    var body: some View {
        List(self.getListItems(), id: \.id) { view in
            view
        }
        .onAppear(perform: {
            self.getListItems()
        })
    }
    
    func getListItems() -> [AnyView] {
        
        var views = [AnyView]()
        
        if let listData = DataGenerator().generate() {
            if let leftView = listData.list.leftView {
                views.append(AnyView(LeftProfileView(model: leftView)))
            }
            
            if let rightView = listData.list.rightView {
                views.append(AnyView(RightProfileView(model: rightView)))
            }
        }
        
        return views
    }
}

extension AnyView {
    var id: UUID { UUID() }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: [test])
    }
}
