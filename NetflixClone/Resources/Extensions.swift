//
//  Extensions.swift
//  NetflixClone
//
//  Created by Yarkın Gazibaba on 25.04.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

