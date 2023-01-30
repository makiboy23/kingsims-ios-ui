//
//  Carousel.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/23/23.
//

import SwiftUI

struct Carousel: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(lastItem) { num in
                        GeometryReader { proxy in
                            let scale = getScale(proxy: proxy)
                            NavigationLink(
                                destination: DetailsView(item: num),
                                label: {
                                    VStack(spacing: 8) {
                                        Image(num.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 166, height: 193)
                                            .clipped()
                                    }
                                })
                             
                                .scaleEffect(.init(width: scale, height: scale))
                                //.animation(.spring(), value: 1)
                                .animation(.easeOut(duration: 1))
                                 
                                .padding(.vertical)
                        } //End Geometry
                        .frame(width: 128, height: 400)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                    } //End ForEach
                    Spacer()
                        .frame(width: 16)
                } //End HStack
            }// End ScrollView
        }//End VStack
    }
         
    func getScale(proxy: GeometryProxy) -> CGFloat {
        let midPoint: CGFloat = 125
         
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
         
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
         
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
         
        return scale
    }
   
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}
