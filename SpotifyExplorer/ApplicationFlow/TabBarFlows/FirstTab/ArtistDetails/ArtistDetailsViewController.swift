//
//  ArtistDetailsViewController.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit
import BEKMultiCellTable
import Stellar
import RxSwift
import Lottie
import RxCocoa
class ArtistDetailsViewController: UIViewController {
    
    @IBOutlet weak var artistsTableView: BEKMultiCellTable!
    var viewModel: ArtistDetailsViewModel!
    @IBOutlet weak var noContentView: UIView!
    @IBOutlet weak var lottieAnimationContainer: UIView!
    
    //MARK:- Outlets
    @IBOutlet weak var headerBlurView: UIVisualEffectView!
    @IBOutlet weak var headerContainer: UIView!
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var backgroundBlur: UIVisualEffectView!
    @IBOutlet weak var mainContainerView: UIView!
    private var animation: AnimationView!
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
        UIView.animate(withDuration: 0.5, animations: {
            self.backgroundBlur.effect = UIBlurEffect(style: .systemChromeMaterialDark)
        }) { (finished) in
            if finished {
                self.mainContainerView.makeAlpha(1).duration(0.5).animate()
            }
        }
        
    }
    private func setupUI(){
        backgroundBlur.effect = nil
        noContentView.isHidden = true
        mainContainerView.alpha = 0.0
        artistsTableView.rowHeight = 100
    }
    private func setupSizes(){
        artistsTableView.contentInset = UIEdgeInsets(top: artistsTableView.contentInset.top + headerContainer.bounds.height, left: artistsTableView.contentInset.left, bottom: artistsTableView.contentInset.bottom, right: artistsTableView.contentInset.right)
    }
    
    private func bindData(){
        let input = ArtistDetailsViewModel.Input(bottomOffset: artistsTableView.rx.contentOffset.map{ [artistsTableView] (point) in
            if let safeContentHeight = artistsTableView?.contentSize.height, let safeHeight = artistsTableView?.frame.height {
                let safeOffset = point.y > 0 ? point.y : CGFloat(0.0)
                let result = safeContentHeight - (safeOffset + safeHeight)
                return result > 0 ? result : CGFloat(0.0)
            }
            return CGFloat(0.0)
        }.skip(3).distinctUntilChanged(), closeTrigger: closeButton.rx.tap.asDriver())
        let output = viewModel.transform(input: input)
        let disposables = [
            output.showEmpty.do(onNext: { [unowned self](show) in
            if show {
                self.noContentView.alpha = 0
                self.noContentView.isHidden = !show
                self.noContentView.makeAlpha(1).completion {
                    self.animation = AnimationView(name: "Empty")
                    self.lottieAnimationContainer.contentMode = .scaleAspectFit
                    self.lottieAnimationContainer.addSubview(self.animation)
                    self.animation.frame = self.lottieAnimationContainer.bounds
                    self.animation.loopMode = .repeat(5)
                    self.animation.play()
                }.animate()
            }
        }).drive(),
            
            output.closeAction.drive(),
            output.error.drive(),
            output.isFetching.drive(),
            output.newItems.subscribe(onNext: { [artistsTableView](newViewModels) in
            artistsTableView?.push(cells: newViewModels.compactMap{BEKGenericCell<AlbumTableViewCell>(viewModel: $0)})
        })]
        
        disposables.forEach { (item) in
            item.disposed(by: disposeBag)
        }
    }
}
