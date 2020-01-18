//
//  FollowedUsersViewController.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit
import BEKMultiCellTable
import Stellar
import RxSwift
import RxCocoa
class FollowedUsersViewController: UIViewController {

    @IBOutlet weak var artistsTableView: BEKMultiCellTable!
    var viewModel: FollowedUsersViewModel!

    //MARK:- Outlets
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var spotifyExplorerImageView: UIImageView!
    @IBOutlet weak var buttonContainer: UIView!
    @IBOutlet weak var sendLabel: UILabel!
    @IBOutlet weak var sendStack: UIStackView!
    @IBOutlet weak var changeLanguageButton: UIButton!
    @IBOutlet weak var changeButtonContainer: UIView!
    var loginButton: UIButton!
    
    let disposeBag = DisposeBag()
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSizes()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadAnimations()
    }
    private func loadAnimations(){
//        spotifyExplorerImageView.moveY(-20).duration(0).then().delay(0.3).moveY(20).makeAlpha(1).duration(0.5).animate()
//        showButtonAnimation()
    }
    private func setupUI(){
        artistsTableView.rowHeight = 80
        
    }
    private func setupSizes(){
    }
    
    private func bindData(){
        let input = FollowedUsersViewModel.Input(selectedItem: artistsTableView.rx.itemSelected.asDriver())
        let output = viewModel.transform(input: input)
        [output.newItems.subscribe(onNext: { [artistsTableView](newViewModels) in
            artistsTableView?.push(cells: newViewModels.compactMap{BEKGenericCell<FollowedUsersCell>(viewModel: $0)})
        })].forEach { (item) in
            item.disposed(by: disposeBag)
        }
    }
}
