import Foundation
import UIKit

class AdcioCore {
    
    public static let shared = AdcioCore()
    
    private init() {}
    
    private var isInitialized: Bool = false
    private var clientIdValue: String = ""
    private var sessionIdValue: String = ""
    private var deviceIdValue: String = ""

    public func initializeApp(with clientId: String) {
        self.isInitialized = true
        self.clientIdValue = clientId
    }
    
    public var clientId: String {
        get throws {
            try ensureInitialized()
            return self.clientIdValue
        }
    }
    
    public var storeId: String {
        get throws {
            try ensureInitialized()
            return self.clientIdValue
        }
    }

    public func sessionId(newSessionId newId: String? = nil) throws -> String {
        try ensureInitialized()
        guard let sessionIdValue = newId else {
          sessionIdValue = UUID().uuidString
          return sessionIdValue
        }
        return sessionIdValue
    }
    
    public func deviceId(newDeviceId newId: String? = nil) throws -> String {
        try ensureInitialized()
        guard let deviceIdValue = newId else {
            if let buildId = UIDevice.current.identifierForVendor?.uuidString {
                deviceIdValue = buildId
            }
            return deviceIdValue
        }
        return deviceIdValue
    }
    
    private func ensureInitialized() throws {
        guard isInitialized else {
            throw SdkError.notInitialized
        }
    }
}
