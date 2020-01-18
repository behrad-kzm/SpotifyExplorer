//
//  ArtistDetailsNavigator.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import RxCocoa

final class ArtistDetailsNavigator: Navigator {
    func setup(forArtist artist: ArtistModel){
        let targetViewController = ArtistDetailsViewController(nibName: "ArtistDetailsViewController", bundle: nil)
        targetViewController.isHeroEnabled = true
        targetViewController.viewModel = ArtistDetailsViewModel(navigator: self, networkServices: services.networkServices.getArtistsAlbumUseCases(forArtist: artist), appearance: services.appearance)
        navigationController.isHeroEnabled = true
        navigationController.heroNavigationAnimationType = .none
        if let safeVC = navigationController.viewControllers.last{
            targetViewController.modalPresentationStyle = .overCurrentContext
            safeVC.present(targetViewController, animated: true, completion: nil)
        }
    }
    
    func toHome(){
        if let safeVC = navigationController.viewControllers.last?.presentedViewController {
            safeVC.dismiss(animated: true, completion: nil)
        }
    }
}
