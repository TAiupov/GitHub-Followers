//
//  Test.swift
//  GitHubFollowers
//
//  Created by Tagir Aiupov on 2021-09-14.
//

import UIKit

class MyFileManager {
    static let shared = MyFileManager()
    
    func isStored(atPath path: String) -> Bool {
        return FileManager.default.fileExists(atPath: path)
    }
    func readData(atPath path: String) -> Data? {
        return try? Data(contentsOf: URL(fileURLWithPath: path))
    }
}

class SomeViewModel {
    func getCachedData() -> Data? {
        let path = "xxxxx"
        
        if MyFileManager.shared.isStored(atPath: path) {
            return MyFileManager.shared.readData(atPath: path)
        } else {
            return nil
        }
    }
}

class new {
    func generateParenthesis(_ n: Int) -> [String] {
            // deal with edge case
            guard n > 0 else { return [String]() }
            var result = [String]()
            dfs(
                isOpen: true, // start with an open parenthesis
                max: n,
                openCount: 1, // start with an open parenthesis
                closeCount: 0,
                currentString: "",
                result: &result
            ) // laksd
            return result
        }
        
        func dfs(
            isOpen: Bool,
            max: Int,
            openCount: Int,
            closeCount: Int,
            currentString: String,
            result: inout [String])
        {
            let count = openCount + closeCount
            let character = isOpen ? "(" : ")"
            // Add the current node to the string
            let newString = currentString + character
            // check if it's a leaf
            if count == (max * 2) - 1 {
                // Leaf is always a closing parenthesis
                result.append(newString + ")")
            } else {
                // Check if we already have too many opening parentheses
                if openCount < max {
                    dfs(
                        isOpen: true,
                        max: max,
                        openCount: openCount + 1,
                        closeCount: closeCount,
                        currentString: newString,
                        result: &result
                    )
                }
                // Check if we already have too many closing parentheses and that the parentheses are balanced
                if closeCount < openCount && closeCount < max {
                    dfs(
                        isOpen: false,
                        max: max,
                        openCount: openCount,
                        closeCount: closeCount + 1,
                        currentString: newString,
                        result: &result
                    )
                }
            }
        }
        
}
