//
//  VideoListCell.swift
//  YouTube-api-Alamofire
//
//  Created by 木元健太郎 on 2021/09/13.
//

import UIKit
import Nuke

class VideoListCell: UICollectionViewCell {
    
    var videoItem:Item?{
        didSet{
            
            if let url = URL(string: videoItem?.snippet.thumbnails.medium.url ?? "") {
                            Nuke.loadImage(with: url, into: thumbnailImageView)
                        }
                        
                        if let channelUrl = URL(string: videoItem?.channel?.items[0].snippet.thumbnails.medium.url ?? "") {
                            Nuke.loadImage(with: channelUrl, into: channelImageView)
                        }
            
            titleLabel.text = videoItem?.snippet.title
            descriptionLabel.text = videoItem?.snippet.description
            
        }
    }
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        channelImageView.layer.cornerRadius = 40 / 2
        
    }
    
    
    
}
