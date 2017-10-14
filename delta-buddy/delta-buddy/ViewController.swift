//
//  ViewController.swift
//  delta-buddy
//
//  Created by Shoji Moto on 10/14/17.
//  Copyright © 2017 Shoji Moto. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "http://deltaairlines-dev.apigee.net/v1/hack/waittime?airport=ORD")
        var request = URLRequest(url: url!)
        request.addValue("Bearer O68OqqGKNrb5EC2hEGE6YIVFGeae", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data else {return }
            
            let json = JSON(data: data)
            print("data got")
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

