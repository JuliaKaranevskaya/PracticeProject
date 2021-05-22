//
//  ThirdViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 11.05.21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.setTitle("Share", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(showShareSheet), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.center = view.center

    }
    
    
    @objc private func showShareSheet() {
        guard let firstLink = URL(string: "https://www.google.com") else {
            return
        }
        
        let controller = UIActivityViewController(activityItems: [firstLink], applicationActivities: nil)
        present(controller, animated: true)
    }
    


}
