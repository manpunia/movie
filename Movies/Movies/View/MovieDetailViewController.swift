//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    //TODO: use view model
    var movie:Movie? = nil
    
    
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var popularity: UILabel!
    
    @IBOutlet weak var overview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = self.movie?.title
        self.releaseDate.text = self.movie?.releaseDate
        self.rating.text = self.movie?.voteAverage.description
        self.popularity.text = self.movie?.popularity.description
        self.overview.text = self.movie?.overview.description
        
        //TODO: load image asynchronously and chache the images
        if let url = movie?.poster,
            let  imageUrl = Util.getImageURL(url),
          let data = try? Data(contentsOf: imageUrl),
         let image = UIImage(data: data) {
        self.imageView.image = image
        }
        
    }
    
    
}
