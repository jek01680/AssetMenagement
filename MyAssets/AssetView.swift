//
//  AssetView.swift
//  MyAssets
//
//  Created by 정은경 on 2022/04/06.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView{
            //Stack은 스크롤이 안되어서 스크롤 뷰 안에 넣어주어야 함
            ScrollView{
                VStack(spacing:30){
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView()
                        .aspectRatio(5/2, contentMode: .fit)
                    AssetSummaryView()
                        .environmentObject(AssetSummaryData())
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
