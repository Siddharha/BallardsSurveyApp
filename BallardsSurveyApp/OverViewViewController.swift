//
//  OverViewViewController.swift
//  BallardsSurveyApp
//
//  Created by Siddhartha Maji on 16/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

class OverViewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var viewBtnAddRoom: UIView!
    @IBOutlet weak var tableHightConstrain: NSLayoutConstraint!
    var size:CGFloat! = 70
    var restus:[String] = []
    //var restusImg = ["r1","r2","r3"]
    
    @IBOutlet weak var tableRoom: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableRoom.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
        cell.cellTitle.text = restus[indexPath.row]
     //   cell.resturentImg.image = UIImage(named: restusImg[indexPath.row])
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
         tableHightConstrain.constant = 0
    }
    

    @IBOutlet weak var tableRoomItem: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tappedAddRoom))
        viewBtnAddRoom.addGestureRecognizer(tap)
        viewBtnAddRoom.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }
    
    func tappedAddRoom()
    {
    
        if(restus.count>0){
        size = size + (70/1.6)
        }
        print(size)
        tableHightConstrain.constant = size
       restus.insert("Room " + "\(restus.count)", at: restus.count)
        //tableRoom.contentSize.height = CGFloat(70 * restus.count)
        tableRoom.reloadData()
        tableRoom.updateConstraints()
        
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
