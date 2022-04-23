//
//  ViewController.swift
//  2.9 HW Animation
//
//  Created by Дмитрий Мирошников on 23.04.2022.
//

import Spring

class ViewController: UIViewController {

    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var presetNameLabel: UILabel!
    @IBOutlet var curveNameLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    @IBAction func runAnimation(_ sender: UIButton) {
        setLabels()
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.delay = animation.delay
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    private func setLabels() {
        presetNameLabel.text = animation.name
        curveNameLabel.text = animation.curve
        forceLabel.text = String(round(animation.force * 10) / 10)
        durationLabel.text = String(round(animation.duration * 10) / 10)
        delayLabel.text = String(round(animation.delay * 10) / 10)
    }
}

