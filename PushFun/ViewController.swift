//
//  ViewController.swift
//  PushFun
//
//  Created by Brian Kim on 2020-08-17.
//  Copyright © 2020 Brian Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        if let url = URL(string: "https://fcm.googleapis.com/v1/projects/pushfun-fbb1e/messages:send") {
            var request = URLRequest(url: url)
            request.allHTTPHeaderFields = ["Content-Type":"application/json", "Authorization":"Bearer " + "ya29.c.Kl7YByeARM4_gbhkFGUFYC-P2EnPTq71QQSslRURHiJ5ihsP7oBnxFdOiyyo1-ennLm_EkiL1KUatp8bjgzFLyGdpAkf6d31bnFo94zBYLnLr7yszd1PaNFDOUI4Lt-g"]
            request.httpMethod = "POST"
            request.httpBody = "{\"message\":{\"token\":\"ftu2y8mIc0X4l6Q6ZEVDsm:APA91bG2qiuNzNxcAQ0V-2DiTZKAODeC4R6Cp1Q-hWM6trclrqBH-jBqh7EgMpAZ0cYCUDp1jwFaTzMYJsY1G797ZOrwSjDZsrT9katfXwH_bswbsqa_GAmCQYM4Xemt4uv-7Wfmr0gf\",\"notification\":{\"body\":\"This is my first push.\",\"title\":\"First Push App\"}}}".data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { (data, urlresponse, error) in
                if error != nil {
                    print(error!)
                } else {
                    print(String(data: data!, encoding: .utf8)!)
                }
            }.resume()
        }
    }
    
    
}

