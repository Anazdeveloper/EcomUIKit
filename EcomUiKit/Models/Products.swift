//
//  Products.swift
//  EcomUiKit
//
//  Created by Anaz on 20/06/26.
//
import Foundation

struct Product: Hashable, Identifiable {
    let id: UUID
    let name: String
    let price: Double
    let imageURLString: String
}
