//
//  ViewController.swift
//  Tables
//
//  Created by Jason Khong on 11/9/15.
//  Edited by Ayisha Rahman on 16/07/16.
//  Copyright © 2015 ApptivityLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Alternative"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Electronic"
        } else if indexPath.row == 2 {
            cell.textLabel?.text = "Pop"
        }
        
 
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You have just clicked on row \(indexPath.row)")
    }
}