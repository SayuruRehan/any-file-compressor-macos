//
//  AnyFileCompressorTests.swift
//  AnyFileCompressorTests
//
//  Created by Sayuru Rehan on 2025-06-25.
//

import Testing
import Foundation
@testable import AnyFileCompressor

struct AnyFileCompressorTests {

    @Test func testCompressionSettingsDefaults() async throws {
        let settings = CompressionSettings()
        #expect(settings.quality == 0.7)
        #expect(settings.pngCompressionLevel == 6)
        #expect(settings.preserveMetadata == false)
        #expect(settings.maxDimension == nil)
        #expect(settings.optimizeForWeb == true)
    }

    @Test func testProcessingResultSavedPercentage() async throws {
        // 1000 bytes original, 700 bytes compressed => 30% saved
        let dummyURL = URL(fileURLWithPath: "/tmp/compressed.jpg")
        let result = FileProcessor.ProcessingResult(
            originalSize: 1000,
            compressedSize: 700,
            compressedURL: dummyURL,
            fileName: "compressed.jpg",
            originalFileName: "photo.jpg"
        )
        #expect(result.savedPercentage == 30)
    }

    @Test func testProcessingResultSuggestedFileName() async throws {
        let dummyURL = URL(fileURLWithPath: "/tmp/compressed.jpg")
        // Simulate a UUID in the original file name
        let result = FileProcessor.ProcessingResult(
            originalSize: 1000,
            compressedSize: 700,
            compressedURL: dummyURL,
            fileName: "compressed.jpg",
            originalFileName: "A1B2C3D4-1234-5678-9ABC-DEF012345678.photo.jpg"
        )
        #expect(result.suggestedFileName == "photo_compressed.jpg")
    }

}
