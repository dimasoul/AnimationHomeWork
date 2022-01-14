//
//  ViewController.swift
//  AnimationHomeWork
//
//  Created by Дмитрий on 11.01.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = animation.description
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        presetLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.curve = animation.curve
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }

}

