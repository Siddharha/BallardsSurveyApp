//
//  PageScrollVC.swift
//  BallardsSurveyApp
//
//  Created by Parthib Biswas on 09/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

class PageScrollVC: UIViewController {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!
    
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 22/255, green: 59/255, blue: 108/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let customFont = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: customFont!, NSForegroundColorAttributeName: UIColor.white]
        
        let width = self.view.frame.width * 0.9
        let height = self.view.frame.height * 0.5
        
        let labelWidth = self.view.frame.width * 0.9
        let labelHeight = self.view.frame.height * 0.05
        
        let button = UIButton()
        
        button.addTarget(self, action: #selector(letsGetStartedButtonPressed), for: .touchUpInside)
        
        for i in 0...4 {
            let imageToDisplay = UIImage(named: "illustration_\(i)")
            let imageView = UIImageView(image: imageToDisplay)
            let headerLabel = UILabel()
            let label = UILabel()
            
            headerLabel.textAlignment = .center
            
            label.textAlignment = .center
            
            
            let xCordinate = self.view.frame.midX + self.view.frame.width * CGFloat(i)
            contentWidth += self.view.frame.width
            
            scrollView.addSubview(headerLabel)
            scrollView.addSubview(label)
            scrollView.addSubview(imageView)
            scrollView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
            
            headerLabel.frame = CGRect(x: (self.view.frame.width/2) - (labelWidth/2), y: 8, width: labelWidth, height: labelHeight)
            
            switch i {
            case 0:
                label.frame = CGRect(x: (self.view.frame.width/2) - (labelWidth/2), y: labelHeight + 8, width: labelWidth, height: labelHeight)
                label.text = "Swipe to get started."
            
            case 1:
                headerLabel.removeFromSuperview()
                label.frame = CGRect(x: xCordinate - (labelWidth/2), y: 8, width: labelWidth, height: labelHeight * 3)
                label.text = "First we need some basic information to get your move started."
            case 2:
                headerLabel.removeFromSuperview()
                label.frame = CGRect(x: xCordinate - (labelWidth/2), y: 8, width: labelWidth, height: labelHeight * 3)
                label.text = "Make sure you take multiple photos of the room containing the items you wish to move from different angles."
            case 3:
                headerLabel.removeFromSuperview()
                label.frame = CGRect(x: xCordinate - (labelWidth/2), y: 8, width: labelWidth, height: labelHeight * 3)
                label.text = "Take individual photos of special items such as a piano."
            case 4:
                headerLabel.removeFromSuperview()
                label.frame = CGRect(x: xCordinate - (labelWidth/2), y: 8, width: labelWidth, height: labelHeight * 3)
                button.frame = CGRect(x: xCordinate - (width/2), y: imageView.frame.height + 20, width: width, height: 40)
                scrollView.addSubview(button)
                label.text = "Finish your request by selecting any additional services you need and taking a photo of the building containing your items, if you are unsure of its accessibility."
            default:
                print("wew")
            }
            
            imageView.frame = CGRect(x: xCordinate - (width/2), y: (self.view.frame.height/2) - (height/2) - (labelHeight * 2), width: width, height: height)
            imageView.contentMode = .scaleAspectFit
            
            label.textColor = UIColor.darkGray
            label.font = UIFont(name: "HelveticaNeue", size: 15)
            label.numberOfLines = 0
            
            headerLabel.text = "Welcome to the Ballards Survey App"
            headerLabel.textColor = UIColor.darkGray
            headerLabel.numberOfLines = 0
            headerLabel.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 25)
            headerLabel.adjustsFontSizeToFitWidth = true
            
            button.backgroundColor = UIColor(red: 22/255, green: 59/255, blue: 108/255, alpha: 1)
            button.setTitle("Let's get started.", for: .normal)
            button.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 15)
            button.setTitleColor(UIColor.white, for: .normal)
            button.layer.cornerRadius = 10
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: 0)
    }

    func letsGetStartedButtonPressed() {
        let basicInformationVC = AppStoryboard.BasicInformation.instance.instantiateViewController(withIdentifier: basicInformationIdentifier)
        self.navigationController?.pushViewController(basicInformationVC, animated: true)
    }
}

extension PageScrollVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(self.view.frame.width))
    }
}
