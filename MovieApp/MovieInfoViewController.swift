//
//  MovieInfoViewController.swift
//  Goswami_MovieApp
//
//  Created by Bhavesh on 11/5/25.
//

import UIKit

class MovieInfoViewController: UIViewController {
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    @IBOutlet weak var movieInfoOutlet: UITextView!
    @IBOutlet weak var showInfoButton: UIButton!

    var movie: MovieList?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = movie?.movieName ?? "Info"
        movieInfoOutlet.text = "" // initially empty until button pressed
        movieInfoOutlet.isEditable = false

        // Setup image
        if let imageName = movie?.movieImage, let img = UIImage(named: imageName) {
            movieImageViewOutlet.image = img
            movieImageViewOutlet.contentMode = .scaleAspectFill
            movieImageViewOutlet.layer.cornerRadius = 10
            movieImageViewOutlet.clipsToBounds = true

            // animate the image appearance
            movieImageViewOutlet.alpha = 0
            movieImageViewOutlet.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            UIView.animate(withDuration: 0.5, delay: 0.05, options: [.curveEaseOut], animations: {
                self.movieImageViewOutlet.alpha = 1
                self.movieImageViewOutlet.transform = .identity
            }, completion: nil)
        }
    }

    @IBAction func showInfoAction(_ sender: UIButton) {
        // show the info in the text view with a gentle fade-in
        movieInfoOutlet.alpha = 0
        movieInfoOutlet.text = movie?.movieInfo ?? "No information available."
        UIView.animate(withDuration: 0.35) {
            self.movieInfoOutlet.alpha = 1
        }
    }
}

