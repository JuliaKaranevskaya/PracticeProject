//
//  SecondViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 11.05.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("Press the button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        setButton()
    }
    
    @objc func showAlert() {
        let alert = UIAlertController(title: "Welcome", message: "Whould you like some coffee?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Yes")
        }))
        alert.addAction(UIAlertAction(title: "Later please", style: .destructive, handler: { action in
            print("Later")
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Yes")
        }))
        alert.addAction(UIAlertAction(title: "Later please", style: .destructive, handler: { action in
            print("Later")
        }))
        alert.addAction(UIAlertAction(title: "Later please", style: .cancel, handler: { action in
            print("Later")
        }))
 
        
        present(alert, animated: true)
    }
    
    func setButton() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    

}
