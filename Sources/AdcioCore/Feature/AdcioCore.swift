import Foundation
import UIKit

public final class AdcioCore {
    
    public static let shared = AdcioCore()
    
    private init() {}
    
    private var isInitialized: Bool = false
    private var clientIdValue: String = ""
    private var sessionIdValue: String = ""
    private var deviceIdValue: String = ""

    public func initializeApp(
        clientId newClientId: String,
        sessionId newSessionId: String? = nil,
        deviceId newDeviceId : String? = nil
    ) {
        self.isInitialized = true
        self.clientIdValue = newClientId
        self.sessionIdValue = newSessionId ?? UUID().uuidString
        self.deviceIdValue = newDeviceId ?? fetchDefaultDeviceId()
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

    public func sessionId(_ newId: String = "") throws -> String {
        try ensureInitialized()
        if !newId.isEmpty {
            sessionIdValue = newId
        }
        return sessionIdValue
    }
    
    public func deviceId(_ newId: String = "") throws -> String {
        try ensureInitialized()
        if !newId.isEmpty {
            sessionIdValue = newId
        }
        return deviceIdValue
    }
    
    private func ensureInitialized() throws {
        guard isInitialized else {
            throw SdkError.notInitialized
        }
    }
}
