import Foundation

enum SdkError: LocalizedError {
    case notInitialized

    var errorDescription: String? {
        switch self {
        case .notInitialized:
            return NSLocalizedString("You must call init before using the core.", comment: "")
        }
    }
}
