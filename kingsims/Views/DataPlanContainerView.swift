//
//  DataPlanContainerView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/9/23.
//

import SwiftUI

struct DataPlanContainerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(height: 194)
                .cornerRadius(14)
//                        .shadow(color: .black, radius: 0, x: 0, y: 0)
                .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                
            HStack(alignment: .top) {
                ZStack {
                    VStack(spacing: 0) {
                        DataStatusView()
                        DataPlanView()
                        DataPlanUntilView()
                        Spacer()
                    }
                }
                .padding(EdgeInsets(top: 14, leading: 29, bottom: 0, trailing: 0))
                
                Spacer()
                
                ProgressBarDataUsageView()
                    .offset(x: -29, y: 14)
              
            }
        }
    }
}

struct DataPlanContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DataPlanContainerView()
    }
}
