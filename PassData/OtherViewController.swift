//
//  OtherViewController.swift
//  PassData
//
//  Created by Noor Mohammed Anik on 18/7/21.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (text != nil) {
            label.text=text
        }

        
    }

    @IBAction func pressedBack(_ sender: Any) {
        
        let controller=storyboard?.instantiateViewController(identifier: "main") as! ViewController
        
        
        controller.modalPresentationStyle = .fullScreen
        present(controller,animated: true)
        
    }
    
}
