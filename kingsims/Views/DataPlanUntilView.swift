//
//  DataPlanUntilView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/9/23.
//

import SwiftUI

struct DataPlanUntilView: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Active Until")
                    .font(.custom("SF Pro", fixedSize: 12))
                    .foregroundColor(Color(hex: 0xA3A0AB))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 7, trailing: 0))
                
                Text("July 31, 2022")
                    .font(.custom("SF Pro", fixedSize: 14))
                    .foregroundColor(Color(hex: 0x222225))
                    
            }
            
            Spacer()
        }
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
    }
}

struct DataPlanUntilView_Previews: PreviewProvider {
    static var previews: some View {
        DataPlanUntilView()
    }
}
