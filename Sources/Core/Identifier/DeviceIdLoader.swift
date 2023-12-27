import UIKit

public struct DeviceIDLoader {
    static var indentifier: String {
        guard let indentifier = UIDevice.current.identifierForVendor?.uuidString else {
            return ""
        }
        return indentifier
    }
}
