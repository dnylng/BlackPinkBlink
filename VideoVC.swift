//
//  VideoVC.swift
//  BlackPinkBlink
//
//  Created by Danny Luong on 6/28/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var videoLbl: UILabel!
    private var _blinkArea: BlinkArea!
    
    var blinkArea: BlinkArea {
        get {
            return _blinkArea
        } set {
            _blinkArea = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoLbl.text = blinkArea.videoTitle
        webView.loadHTMLString(blinkArea.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
