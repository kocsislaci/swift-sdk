//
//  ExpiryDateValidator.swift
//  
//
//  Created by Székely Károly on 2023. 05. 31..
//

import Foundation
import PaylikeClient

func validateExpiryDate(cardExpiry: CardExpiry?) -> Bool {
    let isFormatValid = cardExpiry != nil
    if isFormatValid {
        let isInFuture = cardExpiry!.toDate() > Date()
        return isInFuture
    }
    return false
}
