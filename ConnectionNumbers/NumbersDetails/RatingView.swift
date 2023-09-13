//
//  RatingView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/13/23.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 5) { _ in
                Image(systemName: "star")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}

