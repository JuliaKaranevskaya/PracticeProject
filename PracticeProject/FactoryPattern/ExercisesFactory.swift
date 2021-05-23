//
//  ExercisesFactory.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 23.05.21.
//

import Foundation

enum Exercise {
    case lunges, pushups, absCrunches
}

class ExercisesFactory {
    static let defaultFactory = ExercisesFactory()
    
    func createExercise(name: Exercise) -> Workout {
        switch name {
        case .lunges:
            return Lunges()
        case .pushups:
            return Pushups()
        case .absCrunches:
            return AbsCrunches()
        }
    }
}
