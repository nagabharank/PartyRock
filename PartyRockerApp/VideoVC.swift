//
//  VideoVC.swift
//  PartyRockerApp
//
//  Created by NagaBharan Kothrui on 1/4/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var TitleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
        
    }
    
    
    
}
