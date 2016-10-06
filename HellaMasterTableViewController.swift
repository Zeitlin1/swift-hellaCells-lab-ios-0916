//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {

    var hellaList = [Int]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var i = 0
        while i < 100 {
            i+=1
            hellaList.append(i)
        }
    }
    
       
        
        // Do any additional setup after loading the view, typically from a nib.
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("sectionfired")
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hellaList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HellaCell", for: indexPath)
        let hella = hellaList[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = String(hella)
        print("tableview2 fired")
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("id fired early")
        if segue.identifier != "HellaCell" {return}
        print("id fired")
        if let dest = segue.destination as? HellaDetailView,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.hellaString = String(hellaList[(indexPath as NSIndexPath).row])
            print(")segue func fired")
        }


  }
}

