//
//  ViewController.swift
//  Almofireobjectmapper
//
//  Created by nikhil boriwale on 1/16/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var mytable: UITableView!
    var datasourceArray = [Actor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.estimatedRowHeight = 243
       let apiCall = APImanager.shared.fetchActorfromApi()
        let _ = apiCall.then{
            actor -> Void in
            self.datasourceArray = actor
            self.mytable.reloadData()
            }.catch{error
                -> Void in 
        }
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasourceArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:"tablecell") as! tablecell
        cell.lblname.text = datasourceArray[indexPath.row].name!
        cell.lblDOB.text = datasourceArray[indexPath.row].dob!
        cell.lblheight.text = datasourceArray[indexPath.row].height!
        cell.lblspouse.text = datasourceArray[indexPath.row].spouse!
        cell.lblcountry.text = datasourceArray[indexPath.row].country!
        cell.lblchildren.text = datasourceArray[indexPath.row].children!
        cell.lblDescrption.text = datasourceArray[indexPath.row].description!
        //here we convert image string data into url format& dispaly the image.. data  Using Alamofire image..
        let url = URL(string:datasourceArray[indexPath.row].imageurl!)
        cell.imageMy.af_setImage(withURL: url!)
        
        
        return cell
    }
    

}

