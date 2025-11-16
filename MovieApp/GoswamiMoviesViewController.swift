//
//  GoswamiMoviesViewController.swift
//  Goswami_MovieApp
//
//  Created by Bhavesh on 11/5/25.
//

import UIKit

class GoswamiMoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var moviesTableView: UITableView!

    private var genres: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Genres"
            
            // This ensures the back button will show "Genres"
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "Genres", style: .plain, target: nil, action: nil)
            
            genres = MovieDataProvider.allGenres()
            moviesTableView.dataSource = self
            moviesTableView.delegate = self
            moviesTableView.tableFooterView = UIView()
    }

    // MARK: - TableView DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        let genre = genres[indexPath.row]
        cell.textLabel?.text = genre.genre
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    // MARK: - Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listsSegue" {
            guard let indexPath = moviesTableView.indexPathForSelectedRow,
                  let dest = segue.destination as? MovieListViewController else { return }
            let selectedGenre = genres[indexPath.row]
            dest.genreTitle = selectedGenre.genre
            dest.moviesList = selectedGenre.list_Array
        }
    }
}
