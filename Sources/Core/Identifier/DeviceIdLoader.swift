import UIKit

public struct DeviceIDLoader {
    public static var indentifier: String {
        guard let indentifier = UIDevice.current.identifierForVendor?.uuidString else {
            return ""
        }
        return indentifier
    }
}
