//
//  TableViewController.swift
//  C4_1_TableVew
//
//  Created by mac12 on 2022/3/9.
//

import UIKit

class TableViewController: UITableViewController {
    var names = ["facebook", "google", "twitter", "firefox", "youtube"]
    var imgs = ["fb_icon", "google_icon", "twitter_icon", "firefox_icon", "youtube_icon"]
    var types = ["Social Media", "Search Engine", "Socail Media", "Browser", "Media"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isEditing = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        cell.nameLabel?.text = names[indexPath.row]
        cell.thumbernail?.image = UIImage(named: imgs[indexPath.row])
        cell.typeLabel?.text = types[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Row Selected", message: "You select \"\(names[indexPath.row])\"", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes I did", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            names.remove(at: indexPath.row)
            imgs.remove(at: indexPath.row)
            types.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let tmp1 = names[fromIndexPath.row]
        let tmp2 = imgs[fromIndexPath.row]
        let tmp3 = types[fromIndexPath.row]
        names.remove(at: fromIndexPath.row)
        names.insert(tmp1, at: to.row)
        
        imgs.remove(at: fromIndexPath.row)
        imgs.insert(tmp2, at: to.row)
        types.remove(at: fromIndexPath.row)
        types.insert(tmp3, at: to.row)
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
