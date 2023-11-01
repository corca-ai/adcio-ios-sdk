import SwiftUI
import UIKit
import WebKit
import AdcioCore

public struct AdcioAgent: UIViewRepresentable {
    
    private var baseUrl: String = "https://agent.adcio.ai"
    private var clientId: String = ""
    private var showAppBar: Bool = false
    
    private let webView = WKWebView()
    
    public init(
        baseUrl newBaseUrl: String = "",
        clientId newClientId: String = "",
        showAppBar: Bool = false
    ) throws {
        self.baseUrl = newBaseUrl.isEmpty ? baseUrl : newBaseUrl
        self.clientId = try newClientId.isEmpty ? AdcioCore.shared.clientId : newClientId
        self.showAppBar = showAppBar
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        let startPage = "start/"
        let agentURL: String = "\(baseUrl)/\(clientId)/\(startPage)?platform=ios&show_appbar=\(showAppBar)"
        webView.load(URLRequest(url: URL(string: agentURL)!))
        return webView
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
    public func isAgentStartPage() -> Bool {
        if let url = webView.url, url.absoluteString.contains("start/") {
            return true
        }
        return false
    }

    public func agentGoBack() -> Bool {
        if webView.canGoBack {
            webView.goBack()
            return true
        }
        return false
    }
}
