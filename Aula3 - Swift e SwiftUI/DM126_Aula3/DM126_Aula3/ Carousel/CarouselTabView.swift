//
//  CarouselTabView.swift
//  DM126_Aula3
//
//  Created by user270232 on 11/9/24.
//

import SwiftUI

struct CarouselTabView: View {
    let bannerList: [ServiceType] = [
        ServiceType(id: 1, nome: "", imagem: "c1"),
        ServiceType(id: 2, nome: "", imagem: "c2"),
        ServiceType(id: 3, nome: "", imagem: "c3"),
    ]
    var body: some View {
        TabView {
            ForEach(bannerList) {
                banner in CarouselItemView(banner: banner)
            }
        }.frame(width: 300)
            .tabViewStyle(
                .page(indexDisplayMode: .always)
            )
    }
}

#Preview {
    CarouselTabView()
}
