//
//  SixthVC.swift
//  HeroChallenge
//
//  Created by Gizem Zorlu on 21.08.2023.
//

import UIKit

class SixthVC: UIViewController {

    let buttonRestart: UIButton = UIButton()
    let label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        
        view.backgroundColor = .gray
        
        view.addSubview(label)
        label.text = "You are trapped."
        label.font = .boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        
        view.addSubview(buttonRestart)
        buttonRestart.addTarget(self, action: #selector(buttonUpTapped), for: .touchUpInside)
        buttonRestart.setTitle("Go back and try again.", for: .normal)
        buttonRestart.titleLabel?.numberOfLines = 0
        buttonRestart.backgroundColor = .black
        buttonRestart.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-100)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            
        }
    }
    
    @objc func buttonUpTapped() {
        let vc = FifthVC()
                    vc.modalPresentationStyle = .fullScreen
                    vc.hero.isEnabled = true
                    present(vc, animated: true, completion: nil)
         
                }

}
