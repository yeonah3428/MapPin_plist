//
//  ViewController.swift
//  01_MapPin_plist
//
//  Created by D7703_22 on 2017. 9. 19..
//  Copyright © 2017년 D7703_22. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        zoomToRegion()
        // plist 가져오기
        let path = Bundle.main.path(forResource: "ViewPoint3", ofType: "plist")
        print("path = \(String(describing:path))")
        
        // plist 파일을 사용하기위해 복사
        let contents = NSArray(contentsOfFile: path!)
        print("contents = \(String(describing: contents))")
    }
    
    func zoomToRegion() {
        
        let center = CLLocationCoordinate2DMake(35.166162, 129.072616)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: center, span: span)
        
        myMapView.setRegion(region, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

