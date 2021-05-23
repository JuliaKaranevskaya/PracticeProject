//
//  FactoryViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 23.05.21.
//

import UIKit

class FactoryViewController: UIViewController {
    
    var workoutArray = [Workout]()

    override func viewDidLoad() {
        super.viewDidLoad()
        createWorkoutSession(name: .pushups)
        runWorkoutSession()

      
    }
    
    func createWorkoutSession(name: Exercise) {
        let exercise = ExercisesFactory.defaultFactory.createExercise(name: name)
        workoutArray.append(exercise)
    }
    
    func runWorkoutSession() {
        for exercise in workoutArray {
            exercise.start()
            exercise.finish()
        }
    }


}
