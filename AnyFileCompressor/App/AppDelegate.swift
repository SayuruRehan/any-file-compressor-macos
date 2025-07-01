//
//  AppDelegate.swift
//  AnyFileCompressor
//
//  Created by Sayuru Rehan on 2025-06-23.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationWillTerminate(_ notification: Notification) {
        CacheManager.shared.cleanupOldFiles()
    }
}
