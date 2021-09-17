//  MoviesViewController.swift
//  Flix
//
//  Created by Daniel Cruz Castro on 9/16/21.
import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var headerView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String:Any]!
    
    // ------ This function loads the given code upon first boot of the View ------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assign respective values
        titleLabel.text = movie["title"] as? String
        descriptionLabel.text = movie["overview"] as? String
        
        // Grab poster values
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        posterView.af.setImage(withURL: posterURL!)
        
        // Grab header values
        let headerPath = movie["backdrop_path"] as! String
        let headerURL = URL(string: "https://image.tmdb.org/t/p/w780" + headerPath)
        headerView.af.setImage(withURL: headerURL!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
