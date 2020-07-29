//
//  ViewController.swift
//  Tableviewswift
//
//  Created by shah bangash on 19/12/18.
//  Copyright © 2018 Shah Hussain Bangash. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    
    
//    @IBOutlet var mylabel: ViewControllerTableViewCell!
//    @IBOutlet var myimage: ViewControllerTableViewCell!
    var cars = [String]()
    var newCar: String = ""

    @IBOutlet var tableView: UITableView!

       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    cars = ["BMW","Audi","Volkswagen", "shah","asad","Darsamand"]
        
//         self.tableView.backgroundColor = UIColor.lightGray
        
//        let colors = [UIColor.blue, UIColor.yellow, UIColor.magenta, UIColor.red, UIColor.brown]
//
//        let cellReuseIdentifier = "cell"
     
    }

    // 2
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    // 3
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    

        cell.textLabel?.text = cars[indexPath.row]
        cell.textLabel?.textColor  = .red
    
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.backgroundColor = UIColor.yellow
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.red
        
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        if(indexPath.row == 0){
        
            let alert = UIAlertController(title: "AlertController Tutorial",
                                          message: "Submit something",
                                          preferredStyle: .alert)    
            print("Welcome")
        } else if(indexPath.row == 1){
            
            let alert = UIAlertController(title: "Error", message: "Enter data in Text fields", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
           
            print("testing")
        }else if(indexPath.row == 2){
            
                 print("Online Soft Teach")
            
            let alert = UIAlertView(title: "alertView", message: "This is alertView", delegate:self as? UIAlertViewDelegate, cancelButtonTitle:"Cancel", otherButtonTitles: "Done", "Delete")
            alert.show()
        
        }else if(indexPath.row == 3){
            
            print("Darsamand Village")
            
            
            let vc = SecondViewController(
                nibName: "SecondViewController",
                bundle: nil)
            navigationController?.pushViewController(vc,
                                                     animated: true )
            
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "MainVC") as UIViewController
//            navigationController?.pushViewController(vc, animated: true)
            
//            let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//            self.navigationController?.pushViewController(SecondViewController, animated: true)
            
        }else if(indexPath.row == 4){
            
            let vc = ThridViewController(
                nibName: "ThridViewController",
                bundle: nil)
            navigationController?.pushViewController(vc,
                                                     animated: true )
        
        }
    }
 
  
    
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 70
    }
    
  
   
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


