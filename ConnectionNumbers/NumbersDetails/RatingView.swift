//
//  RatingView.swift
//  ConnectionNumbers
//
//  Created by Alexey Kanaev on 9/13/23.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    let maximumRating = 5
    
    let onColor = Color.yellow
    let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "star")
                    .foregroundColor(
                        index > rating ? offColor : onColor)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}

