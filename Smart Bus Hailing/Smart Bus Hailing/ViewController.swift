//
//  ViewController.swift
//  Smart Bus Hailing
//
//  Created by Asad Ali on 04/12/2019.
//  Copyright © 2019 Asad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellReuseIdentifier = "rideInfoCell"
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib.init(nibName: "RideInfoCellTableViewCell", bundle: nil), forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell:RideInfoCellTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as? RideInfoCellTableViewCell else {
            return UITableViewCell()
        }
        
//        cell.myView.backgroundColor = self.colors[indexPath.row]
//        cell.myCellLabel.text = self.animals[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

}

