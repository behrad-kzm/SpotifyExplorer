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
    
    var viewModel: FollowedUsersViewModel!
    
    //MARK:- Outlets
        @IBOutlet weak var artistsTableView: BEKMultiCellTable!
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerBlurView: UIVisualEffectView!
    @IBOutlet weak var headerContainer: UIView!
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
        
    }
    private func setupUI(){
        artistsTableView.rowHeight = 80
        view.backgroundColor = viewModel.appearance.getColors().backgroundColor
        headerTitleLabel.textColor = viewModel.appearance.getColors().titleTextColor
    }
    private func setupSizes(){
        artistsTableView.contentInset = UIEdgeInsets(top: artistsTableView.contentInset.top + headerContainer.bounds.height, left: artistsTableView.contentInset.left, bottom: artistsTableView.contentInset.bottom, right: artistsTableView.contentInset.right)
    }
    
    private func bindData(){
        let input = FollowedUsersViewModel.Input(selectedItem: artistsTableView.rx.itemSelected.asDriver(), bottomOffset: artistsTableView.rx.contentOffset.map{ [artistsTableView] (point) in
            if let safeContentHeight = artistsTableView?.contentSize.height, let safeHeight = artistsTableView?.frame.height {
                let safeOffset = point.y > 0 ? point.y : CGFloat(0.0)
                let result = safeContentHeight - (safeOffset + safeHeight)
                return result > 0 ? result : CGFloat(0.0)
            }
            return CGFloat(0.0)
        }.skip(3).distinctUntilChanged())
        let output = viewModel.transform(input: input)
        let disposables = [
            output.sectionAction.drive(),
            output.error.drive(),
            output.isFetching.drive(),
            output.newItems.subscribe(onNext: { [artistsTableView](newViewModels) in
                artistsTableView?.push(cells: newViewModels.compactMap{BEKGenericCell<FollowedUsersCell>(viewModel: $0)})
            })]
        
        disposables.forEach { (item) in
            item.disposed(by: disposeBag)
        }
    }
}
