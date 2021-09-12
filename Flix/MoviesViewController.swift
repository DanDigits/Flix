//  MoviesViewController.swift
//  Flix
//
//  Created by Daniel Cruz Castro on 9/9/21.
//
import UIKit
import AlamofireImage

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    // Properties
    var movies = [[String:Any]]() // Let array "movies" contain strings

    // ------ This function loads the given code upon first boot of the View ------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Fill in row information to tableView
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
        print("Hello")
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            
             // This will run when the network request returns
             if let error = error {
                print(error.localizedDescription)
             } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                
                // Input JSON results into movies array?
                self.movies = dataDictionary["results"] as! [[String:Any]]
                self.tableView.reloadData() // Reload the data when receiving information, as movies.count is initially set to 0.
                print(dataDictionary)
                
                // TODO: Get the array of movies
                // TODO: Store the movies in a property to use elsewhere
                // TODO: Reload your table view data
             }
            
        }
        task.resume()
    }
    
    
// Functions ---------------------------------------------------------------------------------------------
    // Row count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    // Row content; cell is sort of the content organizer for each row. Iteratively constructs rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell // Reuses another cell if off screen. Recycles, and creates new ones if none available. Cast as "MovieCell" to use related attruibutes
        let movie = movies[indexPath.row] // Fill in const movie with given indexPath.row from movies array
        let title = movie["title"] as! String // Into const title, add value from movie["title" element], as a string.
        let description = movie["overview"] as! String
        
        cell.titleLabel.text = title
        cell.descriptionLabel.text = description
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        cell.posterView.af.setImage(withURL: posterURL!)
        
        return cell
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
