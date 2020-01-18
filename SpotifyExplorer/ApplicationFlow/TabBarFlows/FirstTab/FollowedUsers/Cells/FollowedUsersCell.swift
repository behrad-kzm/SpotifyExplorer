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

class FollowedUsersCell: UITableViewCell {

    @IBOutlet weak var shadowMaskView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    func setupUI() {
        
        shadowMaskView.layoutIfNeeded()
        let radius = containerView.frame.size.height / 2
        shadowMaskView.dropShadow(color: .black, opacity: 0.3, offSet: CGSize(width: 0, height: 0), radius: radius, shadowRadius: 4, scale: true)
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
        titleLabel.text = viewModel.title
        if let url = URL(string: viewModel.profileImagePath) {
            profileImageView.load(url: url)
            return
        }
        profileImageView.image = UIImage(named: "ArtistPlaceHolder")
    }
}

