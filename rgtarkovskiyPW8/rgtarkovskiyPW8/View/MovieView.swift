//
//  MovieView.swift
//  rgtarkovskiyPW7
//
//  Created by Al Stark on 27.03.2022.
//

import UIKit
import Foundation

class MovieView: UITableViewCell {
    static let identifier = "MovieCell"
    private let poster = UIImageView()
    private let title = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: .default, reuseIdentifier: Self.identifier)
            configureUI()
        }
    
    init() {
        super.init(style: .default, reuseIdentifier: Self.identifier)
        configureUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(movie: Movie){
        title.text = movie.title
        poster.image = movie.poster
    }
    private func configureUI(){
        poster.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(poster)
        addSubview(title)
        
        NSLayoutConstraint.activate([
            poster.topAnchor.constraint(equalTo: topAnchor),
            poster.leadingAnchor.constraint(equalTo: leadingAnchor),
            poster.trailingAnchor.constraint(equalTo: trailingAnchor),
            poster.heightAnchor.constraint(equalToConstant: 200),
            
            title.topAnchor.constraint(equalTo: poster.bottomAnchor, constant: 10),
            title.leadingAnchor.constraint(equalTo: leadingAnchor),
            title.trailingAnchor.constraint(equalTo: trailingAnchor),
            title.heightAnchor.constraint(equalToConstant: 20),
        ])
        title.textAlignment = .center
        
    }

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
