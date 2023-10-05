//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIView!
    
    @IBOutlet weak var mpAdult: UILabel!
    @IBOutlet weak var mpBackdrop: UILabel!
    @IBOutlet weak var mpGenreId: UILabel!
    @IBOutlet weak var mpID: UILabel!
    @IBOutlet weak var mpOriginalTitle: UILabel!
    @IBOutlet weak var mpOverview: UILabel!
    @IBOutlet weak var mpPopularity: UILabel!
    @IBOutlet weak var mpOriginalLanguage: UILabel!
    @IBOutlet weak var mpPosterPath: UILabel!
    @IBOutlet weak var mpReleaseDate: UILabel!
    @IBOutlet weak var mpTitle: UILabel!
    @IBOutlet weak var mpVoteAverage: UILabel!
    @IBOutlet weak var mpVoteCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpMoviesCollectionViewMp (categoria: MostPopularResults){
        self.mpAdult.text = String(categoria.adult ?? true)
        self.mpBackdrop.text = categoria.backdrop_path
        self.mpGenreId.text = "\(String(describing: categoria.genre_ids))"
        self.mpID.text = "\(categoria.id ?? 0)"
        self.mpOriginalTitle.text = categoria.original_title
        self.mpOverview.text = categoria.overview
        self.mpPopularity.text = "\(categoria.popularity ?? 0.0)"
        self.mpOriginalLanguage.text = categoria.original_language
        self.mpPosterPath.text = categoria.poster_path
        self.mpReleaseDate.text = categoria.release_date
        self.mpTitle.text = categoria.title
        self.mpVoteAverage.text = "\(categoria.vote_average ?? 0)"
        self.mpVoteCount.text = "\(categoria.vote_count ?? 0)"
        
        
    }
    


}
