//
//  FifthViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 13.05.21.
//

import UIKit

class FifthViewController: UIViewController {
    
    let colorWell: UIColorWell = {
        let colorWell = UIColorWell()
        colorWell.supportsAlpha = true
        colorWell.selectedColor = .systemTeal
        colorWell.title = "Color Well"
        return colorWell
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        colorWell.backgroundColor = .systemGreen
        view.addSubview(colorWell)
        
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        colorWell.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 100, width: view.frame.size.width - 80, height: 300)
    }
    
    @objc private func colorChanged() {
        view.backgroundColor = colorWell.selectedColor
    }


}
