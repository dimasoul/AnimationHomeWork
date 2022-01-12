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
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "pop"
        presetLabel.text = ("preset: \(String(springAnimationView.animation))")
        springAnimationView.curve = "easyInOut"
        curveLabel.text = ("curve: \(String(springAnimationView.curve))")
        springAnimationView.force = CGFloat(Int.random(in: 0..<6))
        forceLabel.text = ("force: \(String(format: "%.2f", Double(springAnimationView.force)))")
        springAnimationView.duration = CGFloat(Int.random(in: 0..<10))
        durationLabel.text = ("duration: \(String(format: "%.2f", Double(springAnimationView.duration)))")
        springAnimationView.delay = Double.random(in: 0.0...2.0)
        delayLabel.text = ("delay: \(String(format: "%.2f", Double(springAnimationView.delay)))")
        
        springAnimationView.animate()
        
    }
    
    func randomNumber() {
        
    }
}

