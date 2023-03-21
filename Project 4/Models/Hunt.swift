//
//  Hunt.swift
//  Project 4
//
//  Created by Santos O. Martínez Braña on 3/20/23.
//

import UIKit
import CoreLocation

class Hunt {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }

    func reset() {
        self.image = nil
        self.imageLocation = nil
    }
}

extension Hunt {
    static var mockedHunts: [Hunt] {
        return [
            Hunt(title: "Pickup flowers from the North Beach Farmers Market 💐",
                 description: "Try to get an arrangement with a fall vibe. The Urban Vergo floral truck has some great bouquets."),
            Hunt(title: "Take Kingsley for a walk 🦮",
                 description: "Bring treats to encourage him to walk, otherwise be prepared to carry him when he flops."),
            Hunt(title: "Grab a fresh candle 🕯",
                 description: "If you're by the Ferry Building, check out SOMA Small Batch Goods, they have the best candles EVER!!! Their California Morning candle is divine!")
        ]
    }
}
