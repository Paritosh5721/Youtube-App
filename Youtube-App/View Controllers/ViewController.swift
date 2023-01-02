//
//  ViewController.swift
//  Youtube-App
//
//  Created by Paritosh on 21/11/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate,ModelDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    var model = Model()
    var videos = [Video]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        model.delegate = self
        model.getVideos()
        
    }
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  Constants.VideoCell, for: indexPath ) as? VideoTableViewCell
        
        let video = self.videos[indexPath.row]
        cell?.setCell(video)
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("nothing")
    }
}

