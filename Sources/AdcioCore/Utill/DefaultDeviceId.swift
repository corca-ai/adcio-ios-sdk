import UIKit

func fetchDefaultDeviceId() -> String {
    var deviceId: String = ""
    if let buildId = UIDevice.current.identifierForVendor?.uuidString {
        deviceId = buildId
    }
    return deviceId
}
