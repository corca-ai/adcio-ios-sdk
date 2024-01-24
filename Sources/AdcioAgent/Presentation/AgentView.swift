//
//  AgentView.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import SwiftUI
import WebKit
import Core

public struct AdcioAgent: UIViewRepresentable {
    private var baseURL: String
    private let loader: SessionLoader
    private var showAppBar: Bool = false
    private var webView = WKWebView()
    let action: (String) -> Void
    
    public init(
        baseURL: String = "https://agent.adcio.ai",
        loader: SessionLoader = SessionClient.instance,
        showAppBar: Bool = false,
        action: @escaping (String) -> Void
    ) {
        self.baseURL = baseURL
        self.loader = loader
        self.showAppBar = showAppBar
        self.action = action
        self.webView = WKWebView(frame: CGRect.zero, configuration: makeWKWebViewConfiguration())
    }
    
    private static var ProductRouter: String { return "ProductRouter" }
    private static var StartPath: String { return "start/" }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(action: action)
    }

    public func makeUIView(context: Context) -> WKWebView {
        var clientID = String()
        loader.loadSession { clientID = $0 }
        webView.navigationDelegate = context.coordinator
        let agentUrlPath: String = "\(baseURL)/\(clientID)/start/?platform=ios&show_appbar=\(showAppBar)"
        guard let url: URL = URL(string: agentUrlPath) else { return WKWebView()}
        let request = URLRequest(url: url)
        
        webView.load(request)
        
        return webView
    }

    public func updateUIView(_ webView: WKWebView, context: Context) {}
    
    public class Coordinator: NSObject, WKNavigationDelegate, WKScriptMessageHandler {
        let action: (String) -> Void

        public init(action: @escaping (String) -> Void) {
            self.action = action
        }
        
        public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
            if message.name == AdcioAgent.ProductRouter, let path = message.body as? String {
                action(path)
            }
        }
    }
}

//MARK: - Inferface
extension AdcioAgent {
    public func isAgentStartPage() -> Bool {
        if let url = webView.url, url.absoluteString.contains(AdcioAgent.StartPath) {
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
    
    private func makeWKWebViewConfiguration() -> WKWebViewConfiguration {
        let preferences = WKPreferences()
        preferences.javaScriptCanOpenWindowsAutomatically = false
     
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences

        self.registerBridge(name: AdcioAgent.ProductRouter, configuration: configuration)

        return configuration
    }

    private func registerBridge(name: String, configuration: WKWebViewConfiguration) {
        configuration.userContentController.add(self.makeCoordinator(), name: name)
    }
}
