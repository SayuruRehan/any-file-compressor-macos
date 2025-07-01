//
//  TitleBarAcessory.swift
//  AnyFileCompressor
//
//  Created by Sayuru Rehan on 2025-06-24.
//

import SwiftUI

struct TitleBarAccessory: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        Button(action: {
            isDarkMode.toggle()
        }) {
            Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                .foregroundColor(.primary)
        }
        .buttonStyle(PlainButtonStyle())
        .frame(width: 30, height: 30)
    }
}
