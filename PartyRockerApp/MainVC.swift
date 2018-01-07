//
//  ViewController.swift
//  PartyRockerApp
//
//  Created by NagaBharan Kothrui on 1/4/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = PartyRock(imageURL: "https://ih1.redbubble.net/image.273560272.8644/raf,750x1000,075,t,101010:01c5ca27c6.u1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ytQ5CYE1VZw\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Untill I collapse")
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/44NYFvhXmW8/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ryr75N0nki0\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Walk on Water")
        let p3 = PartyRock(imageURL: "https://img.cdandlp.com/2015/09/imgL/117672334.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_Yhyp-_hX2s\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Lose Yourself")
        let p4 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/0/00/Eminem_-_Not_Afraid.jpg",videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/j5-yKhDd64s\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Not Afraid")
        let p5 = PartyRock(imageURL: "https://i.pinimg.com/originals/76/db/ff/76dbffd42e86b6923b09048eeea5b10e.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XbGs_qK2PQA\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Rap God")
        let p6 = PartyRock(imageURL: "https://i.pinimg.com/736x/9d/bb/ff/9dbbffb00a4053131e7b4b416bbd8c37.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uelHwf8o7_U\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Love the Way you Lie")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? Partycell {
            
            let partyRock = partyRocks[indexPath.row]
         
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }


}

