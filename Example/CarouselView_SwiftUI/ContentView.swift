//
//  ContentView.swift
//  CarouselView_SwiftUI
//
//  Created by iOS on 2023/5/12.
//

import SwiftUI

let roles = ["Luffy", "Zoro", "Sanji", "Nami", "Usopp", "Chopper", "Robin", "Franky", "Brook"]

struct ContentView: View {
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 0.9
    @State var isWrap: Bool = true
    @State var autoScroll: Bool = true
    @State var time: TimeInterval = 5
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            Text("\(currentIndex + 1)/\(roles.count)")
            Spacer().frame(height: 40)
            CarouselView(roles,
                      id: \.self,
                      index: $currentIndex,
                      spacing: spacing,
                      headspace: headspace,
                      sidesScaling: sidesScaling,
                      isWrap: isWrap,
                      autoScroll: autoScroll ? .active(time) : .inactive) { name in

                    Image(name)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .cornerRadius(30)
                        .onTapGesture {
                            debugPrint("\(name)")
                        }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
