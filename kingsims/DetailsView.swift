//
//  DetailsView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/20/23.
//

import SwiftUI

struct DetailsView: View {
    let item: Item
      
     var body: some View {
         ZStack {
             Color(red: 255/255, green: 196/255, blue: 20/255).ignoresSafeArea()
             
             ScrollView {
                 DetailItemView(title: "QATAR")
                 DetailItemView(title: "UK & EUROPE")
                 DetailItemView(title: "THAILAND")
             }
         }
         
         .navigationTitle("Destinations")
     }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(item: Item(id: 1, title: "destinations", imageName: "placeholder-carousel"))
    }
}
