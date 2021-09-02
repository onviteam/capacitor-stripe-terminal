//
//  TerminalUtils.swift
//  Plugin
//
//  Created by Noah Prail on 6/28/20.
//  Copyright © 2020 eventOne, Inc. All rights reserved.
//

import Foundation
import StripeTerminal

public class StripeTerminalUtils {
    static func serializeReader(reader: Reader) -> [String: Any] {
        let jsonObject: [String: Any] = [
            "deviceType": reader.deviceType.rawValue,
            "simulated": reader.simulated,
            "stripeId": reader.stripeId as Any,
            "locationId": reader.locationId as Any,
            "locationStatus": reader.locationStatus.rawValue,
            "serialNumber": reader.serialNumber,
            // Bluetooth reader props
            "deviceSoftwareVersion": reader.deviceSoftwareVersion as Any,
            "isAvailableUpdate": reader.availableUpdate != nil,
            "batteryLevel": reader.batteryLevel?.decimalValue as Any,
            "batteryStatus": reader.batteryStatus.rawValue,
            "isCharging": reader.isCharging as Any,
            // Internet reader props
            "ipAddress": reader.ipAddress as Any,
            "status": reader.status.rawValue,
            "label": reader.label as Any,
        ]

        return jsonObject
    }

    static func serializeUpdate(update: ReaderSoftwareUpdate) -> [String: Any] {
        let jsonObject: [String: Any] = [
            "estimatedUpdateTimeString": ReaderSoftwareUpdate.string(from: update.estimatedUpdateTime),
            "estimatedUpdateTime": update.estimatedUpdateTime.rawValue,
            "deviceSoftwareVersion": update.deviceSoftwareVersion,
            "components": update.components.rawValue,
            "requiredAt": update.requiredAt.timeIntervalSince1970,
        ]

        return jsonObject
    }

    static func serializePaymentIntent(intent: PaymentIntent) -> [String: Any] {
        let jsonObject: [String: Any] = [
            "stripeId": intent.stripeId,
            "created": intent.created.timeIntervalSince1970,
            "status": intent.status.rawValue,
            "amount": intent.amount,
            "currency": intent.currency,
            //            "metadata": intent.metadata as [String: Any],
        ]

        return jsonObject
    }
}
