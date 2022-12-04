//
//  FeedViewController.swift
//  Demo App
//
//  Created by Joshua Cleetus on 12/2/22.
//

import UIKit

class FeedViewController: UIViewController {
        
    @IBOutlet weak var feedTableView: UITableView!
    
    // Array of Post objects to simulate real data coming in
    // Make sure each property that we're assigning to a UI element has a value for each mock Post.
    var mockData: [Post] = {
       var meTube = Post(id: 0, name: "MeTube", tagline: "Stream videos for free!", votesCount: 25, commentsCount: 4)
       var boogle = Post(id: 1, name: "Boogle", tagline: "Search anything!", votesCount: 1000, commentsCount: 50)
       var meTunes = Post(id: 2, name: "meTunes", tagline: "Listen to any song!", votesCount: 25000, commentsCount: 590)

       return [meTube, boogle, meTunes]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTableView.delegate = self
        feedTableView.dataSource = self
    }

}

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockData.count
    }
    
    // Creates and configures each cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Grab an available cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostTableViewCell else {
            return UITableViewCell()
        }
        
        // Grab a post from our "data"
        let post = mockData[indexPath.row]
        // Assign a post to that cell
        cell.post = post
        
        return cell
    }
}

extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
