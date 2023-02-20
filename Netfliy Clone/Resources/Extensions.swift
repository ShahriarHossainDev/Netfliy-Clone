//
//  Extensions.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 21/2/23.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
