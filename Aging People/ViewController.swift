//
//  ViewController.swift
//  Aging People
//
//  Created by Ian Yang on 3/12/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(arc4random_uniform(91) + 5) years old"
   
        
        return cell
        
    }

}
