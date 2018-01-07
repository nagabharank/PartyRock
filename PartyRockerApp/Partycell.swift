//
//  Partycell.swift
//  PartyRockerApp
//
//  Created by NagaBharan Kothrui on 1/4/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import UIKit

class Partycell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        //Dowloading the Images from the internet so use Asynchronous Thread so that it would load the image in the background thread
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handles error
            }
        }
    
 
        
    }

}
