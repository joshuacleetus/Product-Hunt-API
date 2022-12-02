//
//  FeedViewController.swift
//  Demo App
//
//  Created by Joshua Cleetus on 12/2/22.
//

import UIKit

class FeedViewController: UIViewController {
        
    @IBOutlet weak var feedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTableView.delegate = self
        feedTableView.dataSource = self
    }

}

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension FeedViewController: UITableViewDelegate {
    
}
