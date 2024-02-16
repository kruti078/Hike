//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Kruti Boghara on 08/02/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
   func makeBody(configuration: Configuration) -> some View {
      configuration
         .label
         .padding(.vertical)
         .padding(.horizontal, 30)
         .background(
            // Conditional Statement with Nil Coalscing
            // Condition  ? A : B
            configuration.isPressed ?
            // A: When User pressed the button
            LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
            :
            // B: When the button isn't pressed
            LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
         .cornerRadius(40)
      
   }
}
