//
//  ViewController.swift
//  PassData
//
//  Created by Noor Mohammed Anik on 18/7/21.
//

import UIKit
import Toast

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let controller=storyboard?.instantiateViewController(identifier: "other") as! OtherViewController
        
        controller.text=textField.text
        
        
        


        controller.modalPresentationStyle = .formSheet
        present(controller,animated: true)
        
    }
    
    @IBAction func showToast(_ sender: Any) {
       // https://github.com/scalessec/Toast-Swift
        
        // basic usage
      //  self.view.makeToast("This is a piece of toast")

        // toast with a specific duration and position
      //  self.view.makeToast("This is a piece of toast", duration: 3.0, position: .center)

        // toast presented with multiple options and with a completion closure
//        self.view.makeToast("This is a piece of toast", duration: 2.0, point: CGPoint(x: 110.0, y: 110.0), title: "Toast Title", image: UIImage(named: "toast.png")) { didTap in
//            if didTap {
//                print("completion from tap")
//            } else {
//                print("completion without tap")
//            }
//        }

        // display toast with an activity spinner
       // self.view.makeToastActivity(.center)

        // display any view as toast
   //     self.view.showToast(myView)
        
        
        
        // create a new style
        var style = ToastStyle()

        // this is just one of many style options
        style.messageColor = .white
        style.backgroundColor = .blue

        // present the toast with the new style
        self.view.makeToast("This is a piece of toast", duration: 3.0, position: .bottom, style: style)

        
    }
    

}

