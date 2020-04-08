//
//  StringOption.swift
//  
//
//  Created by Vladislav Fitc on 08/04/2020.
//

import Foundation

public protocol StringOption: Codable, RawRepresentable where RawValue == String {
}

public extension StringOption {
  
  init(rawValue: RawValue) {
    self.init(rawValue: rawValue)!
  }
  
}

public protocol ProvidingCustomOption {
  
  static func custom(_ value: String) -> Self
  
}

public extension ProvidingCustomOption where Self: StringOption {
  
  static func custom(_ value: String) -> Self {
    return .init(rawValue: value)
  }
  
}
