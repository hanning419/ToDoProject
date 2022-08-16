//
//  ToDoTableViewController.swift
//  ToDoProject
//
//  Created by Hanning Jiang on 8/16/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    
    var toDos : [ToDo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        
        let eat = ToDo()
        eat.name = "eat today!"
        eat.important = true
        
        let clean = ToDo()
        clean.name = "clean ur room asap!"
        clean.important = false
        
        let homework = ToDo()
        homework.name = "do your homework right now!"
        homework.important = true
        
        let tennis = ToDo()
        tennis.name = "don't forget to play tennis!"
        tennis.important = true
        
        return [eat, clean, homework, tennis]
        
    }
    
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "‼️" + toDo.name
        } else {
            cell.textLabel?.text = "🙈 " + toDo.name
        }
        return cell
    }

}
