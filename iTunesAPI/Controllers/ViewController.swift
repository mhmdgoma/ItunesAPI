//
//  ViewController.swift
//  ItunesAPI
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import UIKit
import iTunesSearchAPI
import Kingfisher


class ViewController: UIViewController, UIScrollViewDelegate {
    var userDefaults = UserDefaults.standard
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var labelCollectionName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelShortDescription: UILabel!
    
    var results : [Results]?
    var contentWidth:CGFloat = 0.0
    let segueDetails = "details"
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Albums"
        
        view.accessibilityIdentifier = "albumesView"
        
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .always
        }
        
        AlbumBase.fetchAlbmus(keywork: "justin bieber", limit: 15) { album in
            self.results = album.sorted()
            self.configScrollView(albumBase: album)
        }
    }
    
    func bindLabels(album:Results){
        labelCollectionName.text = album.artistName ?? ""
        labelPrice.text =  "$\(album.collectionPrice ?? 0)"
        labelShortDescription.text = album.shortDescription ?? ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueDetails {
            if let toViewController = segue.destination as? DetailsViewController {
                toViewController.data = results?[currentPage]
            }
        }
    }
}

extension ViewController {
    fileprivate func configScrollView(albumBase:AlbumBase) {
        scrollView.delegate = self
        if let resultsSorted = albumBase.results?.sorted(){
            let album = resultsSorted[0]
            bindLabels(album: album)
            pageControl.numberOfPages = resultsSorted.count
            for (index, album) in resultsSorted.enumerated() {
                let imageView = UIImageView()
                let xCoordinate = scrollView.frame.midX + scrollView.frame.width * CGFloat(index)
                imageView.frame = CGRect(x: xCoordinate - 150, y: 40, width: 300, height: 300)
                imageView.contentMode  = .scaleAspectFill
                let imageUrlString =  album.artworkUrl100?.replacingOccurrences(of: "100x100", with: "400x400")
                imageView.setWithUrl(imageUrlString: imageUrlString ?? "")
                contentWidth += view.frame.width
                scrollView.addSubview(imageView)
                
            }
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        currentPage = Int(scrollView.contentOffset.x / CGFloat(414))
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(414))
        if let results = results{
            let album = results[currentPage]
            bindLabels(album: album)
        }
    }
}


extension ViewController {
    @IBAction func handleNextButtonTap() {
        userDefaults.albumsCompleted = true
        self.performSegue(withIdentifier: segueDetails, sender: self)
    }
}


