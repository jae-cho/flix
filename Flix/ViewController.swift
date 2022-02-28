//
//  ViewController.swift
//  Flix
//
//  Created by Jae Cho on 2/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    

    @IBOutlet weak var movieTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
       
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieTableViewCell") as? movieTableViewCell
        else {
            return UITableViewCell()
        }
        return cell
    }

}

