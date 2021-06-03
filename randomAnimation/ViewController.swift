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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAnimationTF()
    }

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
        
        _ = Animation.getAnimation()
        updateAnimationTF()
        springAnimationButton.setTitle("run \(parameters.0)", for: .normal)
    }
}

extension ViewController {
    
    private func roundToString(_ number: Double) -> String{
        String(format: "%.2f", number)
    }
    
    private func updateAnimationTF() {
        springAnimationLabel.text = """
            preset: \(parameters.0)
            curve: \(parameters.1)
            force: \(roundToString(parameters.2))
            duration: \(roundToString(parameters.3))
            delay: \(roundToString(parameters.4))
            """
    }
}
