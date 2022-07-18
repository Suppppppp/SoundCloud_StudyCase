//
//  ViewController.swift
//  SoundCloud_StudyCase
//
//  Created by KYUNGSUP GO on 2022/07/10.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    

    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        animation_SoundCloud()
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let feedNib = UINib(nibName: "HomeTextTableViewCell", bundle: nil)
        tableView.register(feedNib.self, forCellReuseIdentifier: "HomeTextTableViewCell")
//
    }
    
    
// MARK: -  Navigation Upload button - home
    @IBAction func upload_NavigationBarItem(_ sender: UIBarButtonItem) {
        
        // Navigation arrow.up.circle alert
        let alert = UIAlertController(title: "Verify your email address to upload", message: "An email was sent to you. Please click the link in your email and come back to be able to upload your track.", preferredStyle: .alert)
        
        // no event for cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        // no event for Resend button
        let resend = UIAlertAction(title: "Resend", style: .default, handler: nil)
        
        // add button to alert
        alert.addAction(cancel)
        alert.addAction(resend)
        
        // action to alert
        present(alert, animated: true, completion: nil)
        
    }
    
    
    // MARK: - Animation when open the App
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


// MARK: - 전체 TableView에 대한 structure - 이 안에 가로스크롤은 collectio view사용
extension ViewController: UITableViewDelegate, UITableViewDataSource {


    // 한 section에 몇 개의 cell을 넣을 것인가
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    // 어떤 cell을 보여줄 것인가
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        셀별로 이렇게 입력
//        if indexPath.row == 0 {
//
//        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTextTableViewCell", for: indexPath) as? HomeTextTableViewCell  else {
            return UITableViewCell()
        }
        return cell
    }

    
    
}
