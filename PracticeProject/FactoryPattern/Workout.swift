//
//  File.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 23.05.21.
//

import Foundation

protocol Workout {
   
    var name: String { get }
    var equipment: String { get }
    
    func start()
    func finish()
}
