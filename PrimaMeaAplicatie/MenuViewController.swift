//
//  ViewController.swift
//  PrimaMeaAplicatie
//
//  Created by razvan on 9/16/17.
//  Copyright © 2017 razvan. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
     
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Bio"
        case 1:
            cell.textLabel?.text = "Statement"
        case 2:
            cell.textLabel?.text = "Education"
        case 3:
            cell.textLabel?.text = "Work Experience"
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let bioViewController = storyboard.instantiateViewController(withIdentifier: "bio")
            navigationController?.pushViewController(bioViewController, animated: true)
        case 1:	
            let storyboard=UIStoryboard(name: "Main", bundle: nil)
            let statementViewController = storyboard.instantiateViewController(withIdentifier: "statement")
            navigationController?.pushViewController(statementViewController, animated: true)
            break
        case 2:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let educationViewController = storyboard.instantiateViewController(withIdentifier: "education")
            navigationController?.pushViewController(educationViewController, animated: true)
            break
        case 3:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let workexperienceViewController=storyboard.instantiateViewController(withIdentifier: "workexperience")
            navigationController?.pushViewController(workexperienceViewController, animated: true)
            break
        default:
            break
        }
    }

}
