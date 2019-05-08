//
//  ViewController.swift
//  googleApi
//
//  Created by Pavly Remon on 3/10/19.
//  Copyright © 2019 Pavly Remon. All rights reserved.
//
// da by2ra kilma mn textfile w y-search fi google 3liha , w momkin t8yr mn search bar google elli enta 3awzo

import UIKit

class ViewController: UIViewController {
   
    
    let fileURL = "/Users/pavlyremon/Desktop/farida.txt"
    
    
    @IBOutlet weak var textViewer: UITextView!
    
    @IBOutlet weak var webViewer: UIWebView!


    func textFieldShouldReturn(textViewer: UITextView) -> Bool {

        textViewer.resignFirstResponder()

        var urlString: String = textViewer.text!
        var url = NSURL(string: urlString)

   if url?.scheme == nil {
    urlString = urlString.replacingOccurrences(of: " ", with: "+")
    var url = NSURL(string: "http://www.google.com/search?q=\(urlString)")
    var request = NSURLRequest(url: url! as URL)
    
    
    webViewer.scalesPageToFit = true
    webViewer.isUserInteractionEnabled = true
    webViewer.scrollView.isScrollEnabled = true
    
     self.webViewer.loadRequest(request as URLRequest)
   }
    return false

    }


    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            // Read file content
            let contents = try NSString(contentsOfFile: fileURL, encoding: String.Encoding.utf8.rawValue)
            textViewer.text = contents as String
            print(" the text is \(contents)")
        }
        catch  {
            print("An error took place: \(error)")
        }
       // var result : Bool = textFieldShouldReturn (textViewer : textViewer)
        if (!(textFieldShouldReturn (textViewer: textViewer)))
       {
        print ("i'm happu")
        }
        
    }
    
    
    

}


