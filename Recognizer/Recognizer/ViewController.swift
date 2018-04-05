//
//  ViewController.swift
//  Recognizer
//
//  Created by Alumno IDS on 03/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var lock: UIImageView!
    @IBOutlet weak var secured: UIImageView!
    var counter = 0
    
    @IBAction func get(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 1, animations: {
            if (self.counter == 0)
            {
            self.view.backgroundColor = .black
            self.lock.contentMode = .center
            self.lock.contentMode = .scaleAspectFill
            self.lock.center.y += 200
            self.secured.isHidden = true
            self.lock.isHidden = false
            self.counter = 1
            }
            else
            {
                self.view.backgroundColor = .white
                self.lock.contentMode = .center
                self.lock.contentMode = .scaleAspectFill
                self.lock.center.y -= 200
                self.secured.isHidden = false
                self.lock.isHidden = false
                self.counter = 0
            }
        }, completion: nil)
        
    }
    
    @IBAction func get2(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 1, animations:{
            if (self.counter == 0)
            {
                self.view.backgroundColor = .black
                self.secured.contentMode = .center
                self.secured.contentMode = .scaleAspectFill
                self.secured.center.y -= 200
                self.secured.isHidden = false
                self.lock.isHidden = true
                self.counter = 1
            }
            else
            {
                self.view.backgroundColor = .white
                self.secured.contentMode = .center
                self.secured.contentMode = .scaleAspectFill
                self.secured.center.y += 200
                self.secured.isHidden = false
                self.lock.isHidden = false
                self.counter = 0
            }
        }, completion: nil)
    }
    
    
    
    /*
    @IBAction func animated(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.lock.backgroundColor = .brown
            self.view.backgroundColor = .black
            self.lock.contentMode = .center
            self.lock.contentMode = .scaleToFill
            self.lock.center.y += 200
            // self.secured.isHidden = false
            // self.lock.isHidden = true
        }, completion: nil)
    }*/

}
