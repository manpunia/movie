//
//  ViewController.swift
//  Movies
//
//  Created by Manish Punia on 13/03/22.
//

import UIKit

class MovieListViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var movieList:MovieList? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        movieList = LocalDataLoadingService.loadJson(fileName: "movies", type: MovieList.self)
        //prepare the model view array from moview list
        // Do any additional setup after loading the view.
    }


}


extension MovieListViewController :UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc:MovieDetailViewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        vc.movie = self.movieList?.results[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

extension MovieListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = movieList?.results[indexPath.row].title
        cell.detailTextLabel?.text = movieList?.results[indexPath.row].title
        
        //TODO: load async and cache the image
        if let url = movieList?.results[indexPath.row].backdrop,
          let  imageUrl = Util.getImageURL(url),
            let data = try? Data(contentsOf: imageUrl),
           let image = UIImage(data: data) {
            cell.imageView?.image = image
        }

        
        return cell
    }
    
    
}
