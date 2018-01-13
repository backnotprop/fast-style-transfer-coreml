//
//  StyleTransferInput.swift
//  StyleTransfer
//
//

import CoreML

class StyleTransferInput : MLFeatureProvider {
    
    var input: CVPixelBuffer
    
    var featureNames: Set<String> {
        get {
            return ["img_placeholder__0"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "img_placeholder__0") {
            return MLFeatureValue(pixelBuffer: input)
        }
        return nil
    }
    
    init(input: CVPixelBuffer) {
        self.input = input
    }
}
