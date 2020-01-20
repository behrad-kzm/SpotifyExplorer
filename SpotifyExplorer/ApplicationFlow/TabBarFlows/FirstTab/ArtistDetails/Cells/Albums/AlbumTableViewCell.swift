//
//  AlbumTableViewCell.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//


import UIKit
import Domain
import BEKMultiCellTable
import SDWebImage
class AlbumTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shadowMaskView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var imageContainer: UIView!
    var viewModel: AlbumItemViewModel?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    func setupUI() {
        
        [shadowMaskView, containerView, profileImageView].forEach { (item) in
            item?.layoutIfNeeded()
        }
        shadowMaskView.superview?.layoutIfNeeded()
        let radius = containerView.frame.size.height / 2
        if let safeViewModel = viewModel{
            shadowMaskView.dropShadow(color: safeViewModel.colors.shadowColor, opacity: 1.0, offSet: CGSize(width: 0, height: 0), radius: radius, shadowRadius: 4, scale: true)
        }
        imageContainer.layer.cornerRadius = imageContainer.bounds.height / 2
        profileImageView.clipsToBounds = true
        containerView.layer.cornerRadius = radius
        containerView.clipsToBounds = true
    }
}

extension AlbumTableViewCell: BEKBindableCell {
    
    typealias ViewModelType = AlbumItemViewModel
    func bindData(withViewModel viewModel: AlbumItemViewModel) {
        self.viewModel = viewModel
        titleLabel.text = viewModel.title
        genreLabel.text = viewModel.artists
        layoutSubviews()
        titleLabel.textColor = viewModel.colors.titleTextColor
        genreLabel.textColor = viewModel.colors.subtitleTextColor
        containerView.backgroundColor = viewModel.colors.backgroundColor
        
        if let url = URL(string: viewModel.profileImagePath) {
            profileImageView.sd_setImage(with: url, placeholderImage: UIImage(named: "ArtistPlaceHolder"), options: [.continueInBackground], completed: nil)
            return
        }
        profileImageView.image = UIImage(named: "ArtistPlaceHolder")
    }
}
