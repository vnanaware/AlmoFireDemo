//  ViewController.swift

import UIKit
import Alamofire

class ViewController: UIViewController
{
    @IBOutlet var txtName:UITextField!
    @IBOutlet var txtPass:UITextField!
    
    @IBOutlet var btnSubmit:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSubmit .addTarget(self, action: #selector(btnSubmitPressed), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func btnSubmitPressed()
    {
        let parameters: Parameters = [
            "email": "\(String(describing: txtName.text))",
            "password": "\(String(describing: txtPass.text))"
        ]
        
        let URL =  "http://13.126.3.151/job_stream/api/wslogin.php"
      
        
        if #available(iOS 10.0, *) {
            AFWrapper.requestPOSTURL(URL, params: parameters, headers: nil, success:
                {
                    (JSONResponse) -> Void in
                    
            }) {
                (error) -> Void in
                
            }
        }
}
}

