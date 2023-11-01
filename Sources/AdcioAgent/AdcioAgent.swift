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
        baseUrl: String = "",
        clientId: String = "",
        showAppBar: Bool = false
    ) throws {
        self.baseUrl = baseUrl.isEmpty ? self.baseUrl : baseUrl
        self.clientId = try clientId.isEmpty ? AdcioCore.shared.clientId : clientId
        self.showAppBar = showAppBar
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        let agentUrlPath: String = "\(baseUrl)/\(clientId)/start/?platform=ios&show_appbar=\(showAppBar)"
        let agentUrl: URL = URL(string: agentUrlPath)!
        webView.load(URLRequest(url: agentUrl))
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
