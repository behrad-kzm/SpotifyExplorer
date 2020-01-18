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
        
        //MARK: - Key name
        case useDefaults = "com.bekapps.RealmPlatform.UseDefaults"
		//MARK: - Storage Keys
        public enum Authentication: String {
            case accessToken = "com.bekapps.storagekeys.authentication.token.access"
        }
	}

	public enum EndPoints: String {		
		//Main
		case defaultBaseUrl = "https://api.spotify.com/v1/"
		
        case followedArtists = "me/following"
        case artistsAlbum = "artists/"
	}
}
