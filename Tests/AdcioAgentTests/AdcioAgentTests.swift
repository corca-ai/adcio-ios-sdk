//
//  AdcioAgentTests.swift
//
//
//  Created by 김민식 on 2023/12/21.
//

import XCTest
import WebKit
import AdcioAgent

final class AdcioAgentTests: XCTestCase, WKNavigationDelegate {
    func test_load_requestFromUrl() {
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        
        let url = URL(string: "https://agent.adcio.ai/ABCDE/start/?platform=ios&show_appbar=false")!
        
        XCTAssertEqual(webView.estimatedProgress, 0.0)
        
        webView.load(URLRequest(url: url))
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            XCTAssertEqual(webView.estimatedProgress, 1.0)
        }
    }
}
