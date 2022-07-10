//
//  ViewController.swift
//  SoundCloud_StudyCase
//
//  Created by KYUNGSUP GO on 2022/07/10.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        animation_SoundCloud()
    }
    
    func animation_SoundCloud(){
        
        let animationView: AnimationView = {
            let animView = AnimationView(name: "80118-soundcloud-icon")
            
            // Main view frame size 상속받기
            animView.frame = view.convert(view.frame, from: animView)
            // background Color 변경
            animView.backgroundColor = UIColor(red: 253.0/255.0, green: 84.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            animView.contentMode = .scaleAspectFit
            
            return animView
        }()

        view.addSubview(animationView)
        animationView.center = view.center
        //play animation
        animationView.play { (finish) in
            // 애니메이션이 끝났을 때 실행할 것들
            // 1. delete animation view
            animationView.removeFromSuperview()
            // 추가적으로 구현하고 싶은 것 있으면 넣기
            
        }
        
    }
}

