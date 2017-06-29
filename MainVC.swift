//
//  ViewController.swift
//  BlackPinkBlink
//
//  Created by Danny Luong on 6/28/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var blinkAreas = [BlinkArea]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let b1 = BlinkArea(imageURL: "https://i.ytimg.com/vi/Amq-qlqbjYA/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLB9W765Vycn8xBwoQ5iYplL6f6feg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Amq-qlqbjYA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "As If It's Your Last")
        
        let b2 = BlinkArea(imageURL: "https://i.ytimg.com/vi/bwmSjveL3Lc/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLC9w_8WnBdwPXMcOGQ-OpvPUiP6Ww", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bwmSjveL3Lc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Boombayah")
        
        let b3 = BlinkArea(imageURL: "https://i.ytimg.com/vi/9pdj4iJD08s/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBhVXSQ0n1PbTPTcli3orqMZQy3yQ", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9pdj4iJD08s\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Playing With Fire")
        
        let b4 = BlinkArea(imageURL: "https://i.ytimg.com/vi/dISNgvVpWlo/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCGl9sK2OwrmXPcvFqZlK5I2yk3NA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dISNgvVpWlo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Whistle")
        
        let b5 = BlinkArea(imageURL: "https://i.ytimg.com/vi/FzVR_fymZw4/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAUKZCuHKDW4EsQl99arNHExFub-A", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FzVR_fymZw4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Stay")
        
        blinkAreas.append(b1)
        blinkAreas.append(b2)
        blinkAreas.append(b3)
        blinkAreas.append(b4)
        blinkAreas.append(b5)
        
        // Set the delegate and data source
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Give us a reusable blink cell. If none, then create one
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BlinkCell", for: indexPath) as? BlinkCell {
            // Grab a blink area from the area at the specified index
            let blinkArea = blinkAreas[indexPath.row]
            
            // Pass the object to the update UI func
            cell.updateUI(blinkArea: blinkArea)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blinkAreas.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let blinkArea = blinkAreas[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: blinkArea)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let blink = sender as? BlinkArea {
                destination.blinkArea = blink
            }
        }
    }
    
}

