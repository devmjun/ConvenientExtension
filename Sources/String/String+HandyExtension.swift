//
//  String+HandyExtension.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation
import UIKit


// https://github.com/giftbott/HandyExtensions/blob/master/Sources/StringExtensions.swift
extension String {
    
    /// Counts number of input character inside String
    /// ex) let str = "Hello, World!"  ->  str.count("o") = 2
    public func count(_ substring: String) -> Int {
        return components(separatedBy: substring).count - 1
    }
    
    /// Unserialize JSON into Dictionary
    public func jsonToDictionary() -> [String: Any]? {
        guard
            let data = self.data(using: .utf8),
            let jsonData = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers),
            let jsonDict = jsonData as? [String: Any]
            else { return nil }
        return jsonDict
    }
    
    /// Return ASCII Value of each character
    public var asciiValues: [UInt32?] {
        return map { $0.asciiValue }
    }
    
    /// Return string if it matches ASCII
    ///
    ///     "97".asciiToString  // "a"
    public var asciiToString: String? {
        guard let ascii = UInt8(self) else { return nil }
        return String(describing: UnicodeScalar(ascii))
    }
}


// MARK: Subscript
extension String {
    // MARK: - Python style String slicing
    
    /// let str = "Hello"
    /// str[0] // "H"
    /// str[1] // "e"
    public subscript(intIndex: Int) -> Character {
        let letter: Index
        if intIndex >= 0 {
            letter = index(startIndex, offsetBy: intIndex)
        } else {
            letter = index(startIndex, offsetBy: count + intIndex)
        }
        return self[letter]
    }
    
    /// let str = "Hello, World!"
    /// str[0..<2]  // "He"
    /// str[-5 ..< -1]  // "orld"
    public subscript(intRange: Range<Int>) -> String {
        let start: Index
        if intRange.lowerBound >= 0 {
            start = index(startIndex, offsetBy: intRange.lowerBound)
        } else {
            start = index(startIndex, offsetBy: count + intRange.lowerBound)
        }
        let distant = intRange.upperBound - intRange.lowerBound
        let end = index(start, offsetBy: distant)
        
        return String(self[start..<end])
    }
    
    /// let str = "Hello, World!"
    /// str[0...2]  // "Hel"
    /// str[-5 ... -1]  //  "orld!"
    public subscript(intRange: ClosedRange<Int>) -> String {
        return self[intRange.lowerBound ..< (intRange.upperBound + 1)]
    }
    
    /// let str = "Hello, World!"
    /// str[[1,9,2]]  // "el,w"
    /// from above example: 1 - start index,  9 - end index,  2 - stride
    public subscript(intArray: [Int]) -> String {
        let strideNum = intArray[2].isZero ? 1 : intArray[2]
        let subString = self[intArray[0]..<intArray[1]]
        let first = strideNum.isPositive ? 0 : subString.count - 1
        let last = strideNum.isPositive ? subString.count - 1 : 0
        
        var sliceString = ""
        for idx in stride(from: first, through: last, by: strideNum) {
            let start = index(startIndex, offsetBy: idx)
            let end = index(start, offsetBy: 1)
            sliceString += subString[start ..< end]
        }
        
        return sliceString
    }
}
