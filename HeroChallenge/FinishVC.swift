//
//  FinishVC.swift
//  HeroChallenge
//
//  Created by Gizem Zorlu on 21.08.2023.
//

import UIKit

class FinishVC: UIViewController {
    
    let label: UILabel = UILabel()
    let backButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        
        view.backgroundColor = .systemCyan
        
        view.addSubview(label)
        label.text = "Congrats! You escaped from the maze."
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = .systemCyan
        label.backgroundColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(370)
            make.height.equalTo(100)
            
        }
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.systemCyan, for: .normal)
        backButton.backgroundColor = .white
        backButton.layer.borderColor = UIColor.black.cgColor
        backButton.layer.borderWidth = 2
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        view.addSubview(backButton)
        
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(45)
            make.left.equalToSuperview().offset(20)
            make.width.equalTo(60)
            make.height.equalTo(30)
        }
        
    }

    @objc func backButtonClicked(){
        dismiss(animated: true)
    }
        
    }
