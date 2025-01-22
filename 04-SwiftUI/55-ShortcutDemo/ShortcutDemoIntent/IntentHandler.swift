//
//  IntentHandler.swift
//  ShortcutDemoIntent
//
//  Created by Jungman Bae on 1/22/25.
//

import Intents

class IntentHandler: INExtension, BuyStockIntentHandling {
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        guard intent is BuyStockIntent else {
            fatalError("Unkown intent type: \(intent)")
        }
        
        return self
    }
    
    func handle(intent: BuyStockIntent, completion: @escaping (BuyStockIntentResponse) -> Void) {
        
    }
    
    func resolveSymbol(for intent: BuyStockIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
        if let symbol = intent.symbol {
            completion(INStringResolutionResult.success(with: symbol))
        } else {
            completion(INStringResolutionResult.needsValue())
        }
    }
        
    func resolveQuantity(for intent: BuyStockIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
        if let quantity = intent.quantity {
            completion(INStringResolutionResult.success(with: quantity))
        } else {
            completion(INStringResolutionResult.needsValue())
        }
    }

}
