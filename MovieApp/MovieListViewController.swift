//
//  MovieListViewController.swift
//  Goswami_MovieApp
//
//  Created by Bhavesh on 11/5/25.
//

import UIKit

class MovieListViewController: UIViewController {
    @IBOutlet weak var movieListTableView: UITableView!

    var genreTitle: String?
    var moviesList: [MovieList] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the title (this appears at the top and in the back button)
                self.title = "Movies"
                
                // Force the back button to show text
                navigationItem.backBarButtonItem = UIBarButtonItem(title: "Movies", style: .plain, target: nil, action: nil)
                
                movieListTableView.dataSource = self
                movieListTableView.delegate = self
                movieListTableView.tableFooterView = UIView()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieInfoSegue" {
            guard let indexPath = movieListTableView.indexPathForSelectedRow,
                  let dest = segue.destination as? MovieInfoViewController else { return }
            let selectedMovie = moviesList[indexPath.row]
            dest.movie = selectedMovie
        }
    }
}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesList.count
    }

    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        let movie = moviesList[indexPath.row]
        cell.textLabel?.text = movie.movieName
        // optional: show a small thumbnail
        if let img = UIImage(named: movie.movieImage) {
            cell.imageView?.image = img
            cell.imageView?.contentMode = .scaleAspectFill
            cell.imageView?.layer.cornerRadius = 6
            cell.imageView?.clipsToBounds = true
        } else {
            cell.imageView?.image = nil
        }
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    // when selected, segue is triggered by storyboard
}

