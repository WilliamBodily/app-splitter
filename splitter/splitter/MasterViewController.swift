//
//  MasterViewController.swift
//  splitter
//
//  Created by William Bodily on 11/7/18.
//  Copyright © 2018 William Bodily. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationViewController
                controller.image = imagesLabelsColors[indexPath.row].image
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesLabelsColors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel!.text = imagesLabelsColors[indexPath.row].label
        cell.backgroundColor = imagesLabelsColors[indexPath.row].color
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let navBarHeight = navigationController?.navigationBar.frame.height {
            return (tableView.frame.height - navBarHeight) / CGFloat(imagesLabelsColors.count)
        } else {
            return (tableView.frame.height - 60) / CGFloat(imagesLabelsColors.count)
        }
    }


}

