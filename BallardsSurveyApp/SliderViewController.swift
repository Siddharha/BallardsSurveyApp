//
//  SliderViewController.swift
//  Picshu
//
//  Created by Siddhartha Maji on 07/03/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    //var imageArray = [UIImage]()
    let feature1 = ["image":"illustration_0", "title":"Welcome","description":"SWelcome to the SIS Removal App wipe to get started."]
    
    let feature2 = ["image":"illustration_1", "title":"Welcome","description":"SFirst we need some basic information to get your move started."]
    
    let feature3 = ["image":"illustration_2", "title":"Welcome","description":"Make sure you take multiple photos of the room containing the items you wish to move from different angles."]
    
    let feature4 = ["image":"illustration_3", "title":"Welcome","description":"Take individual photos of special items such as a piano."]
    
    let feature5 = ["image":"illustration_4", "title":"Welcome","description":"Finish your request by selecting any additional services you need and taking a photo of the building containing your items, if you are unsure of its accessibility."]
    
    var featuredArray = [Dictionary<String,String>]()
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        featuredArray = [feature1,feature2,feature3,feature4,feature5]
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featuredArray.count), height: 300)
        
        loadFeature()
        //scrollView.frame = view.frame
        scrollView.delegate = self
        //loadSliderImage()
        // Do any additional setup after loading the view.
        
        //performAction()
    }
    
   func loadFeature(){
    
    for (index, feature) in featuredArray.enumerated() {
        if let featureView = Bundle.main.loadNibNamed("Feature", owner: self, options: nil)?.first as? FeatureView{
            featureView.featureImage.image = UIImage(named: feature["image"]!)
            featureView.tfeatureTitle.text = feature["title"]!
            featureView.featureContent.text = feature["description"]!
            let xPos = self.view.frame.width * CGFloat(index)
            featureView.frame = CGRect(x: xPos, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            //scrollView.contentSize.width = scrollView.frame.width * CGFloat(i+1)
           // scrollView.addSubview(imgView)
            
           scrollView.addSubview(featureView)
            scrollView.frame.size.width = self.view.bounds.size.width
            scrollView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
            print(scrollView.frame.origin.x)
            
        }
        
    }
    pageControl.numberOfPages = featuredArray.count
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pp = Int(scrollView.contentOffset.x/CGFloat(414))
        pageControl.currentPage = pp
        
        if(pp == featuredArray.count-1){
            skipBtn.isHidden = true
            nextBtn.setTitle("GET STARTED", for: .normal)
        }else{
            skipBtn.isHidden = false
            nextBtn.setTitle("NEXT", for: .normal)
        }
    
    }
    
 
    @IBAction func skipButton(_ sender: Any) {
        
        startBasicVC()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if(nextBtn.titleLabel?.text == "NEXT"){
            let xPos = self.view.frame.width * CGFloat(pageControl.currentPage+1)
            scrollView.setContentOffset(CGPoint(x: xPos, y: 0), animated: true)
        }else{
           startBasicVC()
        }
        
    }
    
    func startBasicVC() {
        let basicInformationVC = AppStoryboard.BasicInformation.instance.instantiateViewController(withIdentifier: basicInformationIdentifier)
        self.navigationController?.pushViewController(basicInformationVC, animated: true)
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
