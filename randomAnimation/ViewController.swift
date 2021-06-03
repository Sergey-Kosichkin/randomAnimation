//
//  ViewController.swift
//  randomAnimation
//
//  Created by Сергей Косичкин on 03.06.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: UILabel!
    @IBOutlet var springAnimationButton: SpringButton!
    
    private var parameters = Animation.getAnimation()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    override func viewWillAppear(_ animated: Bool) {
        springAnimationView.layer.cornerRadius = 10
        springAnimationButton.layer.cornerRadius = 10
    }
    
    @IBAction func runSpringAnimation() {
        springAnimationView.animation = parameters.0
        springAnimationView.curve = parameters.1
        springAnimationView.force = CGFloat(parameters.2)
        springAnimationView.duration = CGFloat(parameters.3)
        springAnimationView.delay = CGFloat(parameters.4)
        springAnimationView.animate()
    }
}

