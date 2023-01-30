//
//  ProgressBarDataUsageView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/9/23.
//

import SwiftUI

struct ProgressBarDataUsageView: View {
    
    @State var progress: Double = 0.7
    
    let gradient = LinearGradient(gradient: Gradient(colors: [ Color(UIColor(red: 0.98, green: 0.85, blue: 0.38, alpha: 1.00)) ,
                                                                   Color(UIColor(red: 0.63, green: 0.02, blue: 0.11, alpha: 1.00))]),
                                      startPoint: .bottom,
                                      endPoint: .top)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color(red: 238/255, green: 238/255, blue: 238/255),
                    lineWidth: 15
                )
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    gradient,
                style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
            
            VStack(spacing: 0) {
                Text("5.5 GB")
                    .font(.custom("SF Pro", fixedSize: 32))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 7, trailing: 0))
                    
                Text("12 GB")
                    .font(.custom("SF Pro", fixedSize: 12))
                    .foregroundColor(Color(hex: 0xA3A0AB))
            }
        }
        .frame(width: 166, height: 166)
    }
}

struct ProgressBarDataUsageView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarDataUsageView()
    }
}
