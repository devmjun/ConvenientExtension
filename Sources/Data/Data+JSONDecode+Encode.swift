//
//  Data+JSONDecode.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 20/02/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension Data {
  /// try? SomeData().decode(MyType.self)
  public func decode<T>(
    _ type: T.Type,
    decoder: JSONDecoder? = nil
  ) throws -> T where T: Decodable {
    
    let decoder = decoder ?? JSONDecoder()
    return try decoder.decode(type, from: self)
  }
}

extension Encodable {
  /// try? SomeEncodableType.encode()
  public func encode(encoder: JSONEncoder? = nil) throws -> Data {
    let encoder = encoder ?? JSONEncoder()
    return try encoder.encode(self)
  }
}

