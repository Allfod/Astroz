//
//  DetailViewController.swift
//  Astro
//
//  Created by Vural ÇETİN on 25.10.2021.
//

import UIKit
import BetterSegmentedControl
import Kingfisher
import SwiftSoup
class DetailViewController: UIViewController {
    @IBOutlet weak var astroTitle: UINavigationItem!
    @IBOutlet weak var astroImage: UIImageView!
    @IBOutlet weak var astroName: UILabel!
    @IBOutlet weak var astroDescription: UILabel!
    @IBOutlet weak var astroTf: UITextView!
    @IBOutlet weak var loveTF: UITextView!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var careerTF: UITextView!
    @IBOutlet weak var moneyTF: UILabel!
    @IBOutlet weak var healthTF: UILabel!
    var segmentControl = BetterSegmentedControl()
    static var astro = Horoscope()
    var alertController = UIAlertController()
    var day:String = "today"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    private func configure() {
        astroTitle.title = DetailViewController.astro.name
        astroName.text = DetailViewController.astro.name
        astroDescription.text = DetailViewController.astro.horoscopeDescription
        astroImage.image = UIImage(named: DetailViewController.astro.image)
        signButton.layer.cornerRadius = 10
    }
    private func progresConfigure() {
        alertController = UIAlertController(title: nil, message: "Loading...\n\n", preferredStyle: .alert)
        let spinnerIndicator = UIActivityIndicatorView(style: .whiteLarge)
        spinnerIndicator.center = CGPoint(x: 135.0, y: 65.5)
        spinnerIndicator.color = UIColor.black
        spinnerIndicator.startAnimating()
        alertController.view.addSubview(spinnerIndicator)
    }
    private func loadDescription() {
        self.present(alertController,animated: false,completion: nil)
        DispatchQueue.global(qos: .userInitiated).async {
            var descriptionText = ""
            let sign = astrosSign(sign: DetailViewController.astro.name)
            API.getSign(sign: sign, time: String(describing: self.day)) { (description) -> Void in
                descriptionText = description
            }
            DispatchQueue.main.async {
                self.astroTf.text = descriptionText
            }
            
        }
    }
    private func loadLove() {
        
        DispatchQueue.global(qos: .userInitiated).async {
            var loveText = ""
            let sign = astrosSign(sign: DetailViewController.astro.name)
            API.getLove(sign: sign, time: String(describing: self.day)) { (love) -> Void in
                loveText = love
            }
            DispatchQueue.main.async {
                self.loveTF.text = loveText
            }
            
        }
    }
    private func loadCareer() {
        
        DispatchQueue.global(qos: .userInitiated).async {
            var careerText = ""
            let sign = astrosSign(sign: DetailViewController.astro.name)
            API.getCareer(sign: sign, time: String(describing: self.day)) { (career) -> Void in
                careerText = career
            }
            DispatchQueue.main.async {
                self.careerTF.text = careerText
            }
            
        }
    }
    private func loadMoney() {
        
        DispatchQueue.global(qos: .userInitiated).async {
            var moneyText = ""
            let sign = astrosSign(sign: DetailViewController.astro.name)
            API.getMoney(sign: sign, time: String(describing: self.day)) { (money) -> Void in
                moneyText = money
            }
            DispatchQueue.main.async {
                self.moneyTF.text = moneyText
            }
            
        }
    }
    private func loadHealth() {
        
        DispatchQueue.global(qos: .userInitiated).async {
            var HealthText = ""
            let sign = astrosSign(sign: DetailViewController.astro.name)
            API.getMedicana(sign: sign, time: String(describing: self.day)) { (health) -> Void in
                HealthText  = health
            }
            DispatchQueue.main.async {
                self.healthTF.text = HealthText
            }
            
        }
    }
    private func SegmentControl(){
        let control = BetterSegmentedControl(
            frame: CGRect(x: 0.0, y: 60.0, width: view.bounds.width, height: 40.0),
            segments: ["Yesterday", "Today", "Tomorrow",],
            index: 1,
            options: [.backgroundColor(UIColor(red: 43/255, green: 22/255, blue: 58/255, alpha: 1)),
                      .backgroundColor(.white),
                      .indicatorViewBackgroundColor(UIColor(red: 77/255, green: 46/255, blue: 98/255, alpha: 1)),
                      .indicatorViewBorderColor(.white)]
                      
        )
        control.addTarget(self, action: #selector(DetailViewController.navigationSegmentedControlValueChanged(_:)), for: .valueChanged)
        view.addSubview(control)
    }
    @objc func navigationSegmentedControlValueChanged(_ sender:BetterSegmentedControl) {
        if sender.index == 0 {
            self.day = String(describing: Day.yesterday)
        } else if sender.index == 1 {
            self.day = String(describing: Day.today)
        } else if sender.index == 2 {
            self.day = String(describing: Day.tomorrow)
        }
    
    
    
    

    

}
