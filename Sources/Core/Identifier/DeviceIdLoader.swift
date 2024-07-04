import UIKit

public struct DeviceIDLoader {
    public static var indentifier: String {
        guard let indentifier = UIDevice.current.identifierForVendor?.uuidString else {
            return ""
        }
        return indentifier
    }
    
    public static var userAgent: String {
        "\(UIDevice.current.systemName)\(UIDevice.current.systemVersion)"
    }
}
