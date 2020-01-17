//
//  Constants.swift
//  Domain
//
//  Created by Behrad Kazemi on 12/26/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import CoreTelephony

public enum Constants {
	public enum Keys: String {
		//MARK: - Schedulers name
		case cacheSchedulerQueueName = "com.bekapps.Network.Cache.queue"
		case realmRepository = "com.bekapps.RealmPlatform.Repository"
		//MARK: - Storage Keys
        public enum Authentication: String {
            case refreshToken = "com.bekapps.storagekeys.authentication.token.refresh"
            case accessToken = "com.bekapps.storagekeys.authentication.token.access"
            case UUID = "com.bekapps.storagekeys.authentication.info.uuid"
        }
//		public enum Authentication: String {
//		}
//		public enum User: String {
//		}
//
	}
//	public enum DefaultNames: String {
//
//		//Main
//		case album = "Unknown Album"
//
//	}
	public enum EndPoints: String {
		
		//Main
		case defaultBaseUrl = "https://api.spotify.com/v1/"
		
		//Login
        case requestOTP = "C/CustomerAccount/OTPRegister"
        case confirmOTP = "C/CustomerAccount/ConfirmMobileRegister"
		case tokenUrl = " "//[TODO] write token route here ex: account/user/token
	}
}
