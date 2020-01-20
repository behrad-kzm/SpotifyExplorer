//
//  AppSoundEffects.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/25/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import AudioToolbox
import Domain
public struct AppSoundEffects {
    public init() {}
    public func playPopSound() {
        play(url: AppEffectSoundsType.splash())
    }
    public func playErrorSound() {
        play(url: AppEffectSoundsType.error())
    }
    public func playVerifySound() {
        play(url: AppEffectSoundsType.verified())
    }
    public func playDaySound() {
        play(url: AppEffectSoundsType.dayActivated())
    }
    public func playNightSound() {
        play(url: AppEffectSoundsType.nightActivated())
    }
    
    private func play(url: URL) {
        var sound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(url as CFURL, &sound)
        AudioServicesPlaySystemSound(sound)
    }
}

fileprivate enum AppEffectSoundsType {
    public static let splash = { return Bundle.main.url(forResource: "SplashSound", withExtension: "mp3")!}
    public static let error = { return Bundle.main.url(forResource: "ErrorSound", withExtension: "mp3")!}
    public static let verified = { return Bundle.main.url(forResource: "SuccessSound", withExtension: "mp3")!}
    public static let dayActivated = { return Bundle.main.url(forResource: "DaySound", withExtension: "mp3")!}
    public static let nightActivated = { return Bundle.main.url(forResource: "NightSound", withExtension: "mp3")!}
}

