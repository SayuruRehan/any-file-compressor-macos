//
//  VisualEffectBlur.swift
//  AnyFileCompressor
//
//  Created by Sayuru Rehan on 2025-06-24.
//

import SwiftUI

struct VisualEffectBlur: NSViewRepresentable {
    var material: NSVisualEffectView.Material
    var blendingMode: NSVisualEffectView.BlendingMode
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.state = .active
        view.material = material
        view.blendingMode = blendingMode
        view.alphaValue = 0.9
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {}
}
