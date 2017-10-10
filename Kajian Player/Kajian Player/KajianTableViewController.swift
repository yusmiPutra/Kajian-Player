//
//  KajianTableViewController.swift
//  Kajian Player
//
//  Created by Nando Septian Husni on 9/22/17.
//  Copyright © 2017 IMA STUDIO. All rights reserved.
//

import UIKit

class KajianTableViewController: UITableViewController {
    //deklarasi variabel kajian
    var kajian = Kajian().library
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return kajian.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! KajianTableViewCell
        
        cell.artist.text = kajian[indexPath.row]["artist"]
        cell.title.text = kajian[indexPath.row]["title"]
        /*if let coverImage = kajian[indexPath.row]["coverImage"] {
            cell.coverImage.image = UIImage(named: "\(coverImage).png")
        }*/

        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let playerVC = segue.destination as! KajianViewController
            let indexPath = tableView.indexPathForSelectedRow!
            playerVC.trackId = indexPath.row
            
            
        }
    }
  }
