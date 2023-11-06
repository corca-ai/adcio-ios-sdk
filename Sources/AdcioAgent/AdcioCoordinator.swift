//
//  File.swift
//  
//
//  Created by 유현명 on 11/3/23.
//

import UIKit

import WebKit
import Combine

public class AdcioCoordinator: NSObject, WKNavigationDelegate, WKScriptMessageHandler {
    
    let onClickProduct: (String) -> Void

    init(_ agent: AdcioAgent) {
        self.onClickProduct = agent.onClickProduct
    }
    
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "ProductRouter", let path = message.body as? String {
            onClickProduct(path)
        }
    }
}

extension AdcioCoordinator {

    private func productClicked(_ messageBody: Any) {
        print(messageBody)
    }
}
