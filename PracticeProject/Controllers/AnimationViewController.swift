//
//  AnimationViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 22.06.21.
//

import UIKit

class AnimationViewController: UIViewController {

    let label1 = UILabel().createLabel(text: "10", color: .systemTeal)
    let label2 = UILabel().createLabel(text: "9", color: .systemPink)
    let label3 = UILabel().createLabel(text: "8", color: .systemBlue)
    let label4 = UILabel().createLabel(text: "7", color: .systemRed)
    let label5 = UILabel().createLabel(text: "6", color: .systemGray)
    let label6 = UILabel().createLabel(text: "5", color: .systemGreen)
    let label7 = UILabel().createLabel(text: "4", color: .systemYellow)
    let label8 = UILabel().createLabel(text: "3", color: .systemOrange)
    let label9 = UILabel().createLabel(text: "2", color: .systemTeal)
    let label10 = UILabel().createLabel(text: "1", color: .systemIndigo)
    let label11 = UILabel().createLabel(text: "0", color: .systemTeal)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setupLabelsConstraints()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimation)))
    }
    
    fileprivate func addViews() {
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(label7)
        view.addSubview(label8)
        view.addSubview(label9)
        view.addSubview(label10)
        view.addSubview(label11)
        
    }
    
    fileprivate func setupConstraintsForLabel(label: UILabel) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: -100).isActive = true
    }
    
    fileprivate func setupLabelsConstraints() {
        setupConstraintsForLabel(label: label1)
        setupConstraintsForLabel(label: label2)
        setupConstraintsForLabel(label: label3)
        setupConstraintsForLabel(label: label4)
        setupConstraintsForLabel(label: label5)
        setupConstraintsForLabel(label: label6)
        setupConstraintsForLabel(label: label7)
        setupConstraintsForLabel(label: label8)
        setupConstraintsForLabel(label: label9)
        setupConstraintsForLabel(label: label10)
        setupConstraintsForLabel(label: label11)
    }
    
    @objc fileprivate func handleTapAnimation() {
        
        UIView.animate(withDuration: 3, delay: 0, animations: {
            self.label1.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label1.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        UIView.animate(withDuration: 3, delay: 2, animations: {
            self.label2.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label2.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        UIView.animate(withDuration: 3, delay: 4, animations: {
            self.label3.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label3.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 6, animations: {
            self.label4.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label4.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 8, animations: {
            self.label5.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label5.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 10, animations: {
            self.label6.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label6.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 12, animations: {
            self.label7.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label7.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 14, animations: {
            self.label8.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label8.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 16, animations: {
            self.label9.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label9.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 18, animations: {
            self.label10.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label10.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })
        
        UIView.animate(withDuration: 3, delay: 20, animations: {
            self.label11.transform = CGAffineTransform(translationX: 0, y: 300)
        }, completion: { _ in
            UIView.animate(withDuration: 3, delay: .zero, options: .curveEaseInOut) {
                self.label11.transform = CGAffineTransform(translationX: 300, y: 300)
            }
        })

    }

}

extension UILabel {
    
    func createLabel(text: String, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.font = .boldSystemFont(ofSize: 30)
        
        return label
    }
}


