//
//  AdcioAgent.swift
//  
//
//  Created by 유현명 on 11/3/23.
//

import UIKit
import SwiftUI

import WebKit
import AdcioCore

public struct AdcioAgent: UIViewRepresentable {

    private var baseUrl: String = "https://agent.adcio.ai"
    private var clientId: String = ""
    private var showAppBar: Bool = false
    let onClickProduct: (String) -> Void
    
    private var webView = WKWebView()
    
    public init(
        baseUrl: String = "",
        clientId: String = "",
        showAppBar: Bool = false,
        onClickProduct: @escaping (String) -> Void
    ) throws {
        self.baseUrl = baseUrl.isEmpty ? self.baseUrl : baseUrl
        self.clientId = try clientId.isEmpty ? AdcioCore.shared.clientId : clientId
        self.showAppBar = showAppBar
        self.onClickProduct = onClickProduct
        self.webView = WKWebView(frame: CGRect.zero, configuration: generateWKWebViewConfiguration())
    }
    
    public func makeCoordinator() -> AdcioCoordinator {
        AdcioCoordinator(self)
    }

    public func makeUIView(context: Context) -> WKWebView {
        
        webView.navigationDelegate = context.coordinator
        
        let agentUrlPath: String = "\(baseUrl)/\(clientId)/start/?platform=ios&show_appbar=\(showAppBar)"
        let agentUrl: URL = URL(string: agentUrlPath)!
        
        let request = URLRequest(url: agentUrl)
        webView.load(request)
        
        return webView
    }

    public func updateUIView(_ webView: WKWebView, context: Context) { }
}

extension AdcioAgent {

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
    
    private func generateWKWebViewConfiguration() -> WKWebViewConfiguration {

        let preferences = WKPreferences()
        preferences.javaScriptCanOpenWindowsAutomatically = false
     
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences

        self.registerBridge(name:
            "ProductRouter",
        configuration: configuration)

        return configuration
    }

    private func registerBridge(name: String, configuration: WKWebViewConfiguration) {
        configuration.userContentController.add(self.makeCoordinator(), name: name)
    }
}
