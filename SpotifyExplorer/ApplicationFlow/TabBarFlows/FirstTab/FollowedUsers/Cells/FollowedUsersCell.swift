//
//  FollowedUsersCell.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit
import Domain
import BEKMultiCellTable
import SDWebImage
class FollowedUsersCell: UITableViewCell {
    
    @IBOutlet weak var shadowMaskView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    var viewModel: FollowedUsersItemViewModel?

    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    func setupUI() {
        
        shadowMaskView.layoutIfNeeded()
        let radius = containerView.frame.size.height / 2
        if let safeViewModel = viewModel{
        shadowMaskView.dropShadow(color: safeViewModel.colors.shadowColor, opacity: 1.0, offSet: CGSize(width: 0, height: 0), radius: radius, shadowRadius: 4, scale: true)
        }
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height / 2
        profileImageView.clipsToBounds = true
        containerView.layer.cornerRadius = radius
        containerView.clipsToBounds = true
        profileImageView.layer.borderWidth = 0.5
        profileImageView.layer.borderColor = UIColor.lightGray.cgColor
    }
}

extension FollowedUsersCell: BEKBindableCell {
    
    typealias ViewModelType = FollowedUsersItemViewModel
    func bindData(withViewModel viewModel: FollowedUsersItemViewModel) {
        self.viewModel = viewModel
        titleLabel.text = viewModel.title
        genreLabel.text = viewModel.genre
        titleLabel.textColor = viewModel.colors.titleTextColor
        genreLabel.textColor = viewModel.colors.subtitleTextColor
        containerView.backgroundColor = viewModel.colors.backgroundColor
        profileImageView.layer.borderColor = viewModel.colors.shadowColor.cgColor
        let radius = containerView.frame.size.height / 2
        shadowMaskView.dropShadow(color: viewModel.colors.shadowColor, opacity: 1.0, offSet: CGSize(width: 0, height: 0), radius: radius, shadowRadius: 4, scale: true)
        if let url = URL(string: viewModel.profileImagePath) {
            profileImageView.sd_setImage(with: url, placeholderImage: UIImage(named: "ArtistPlaceHolder"), options: [.continueInBackground], completed: nil)
            return
        }
        profileImageView.image = UIImage(named: "ArtistPlaceHolder")
    }
}

