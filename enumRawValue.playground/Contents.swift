//: Playground - noun: a place where people can play

import UIKit

enum StatusCode: Int {
    case success = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

func prettyPrint(status code:StatusCode) -> String {
    switch code {
    case .success:
        return "\(code.rawValue): Success"
    case .unauthorized:
        return "\(code.rawValue): Unauthorized"
    case .forbidden:
        return "\(code.rawValue): Forbidden"
    case .notFound:
        return "\(code.rawValue): Not Found"
    }
}

prettyPrint(status: .success)
prettyPrint(status: .unauthorized)
prettyPrint(status: .forbidden)
prettyPrint(status: .notFound)

