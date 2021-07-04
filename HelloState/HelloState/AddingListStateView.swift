//
//  AddingListStateView.swift
//  HelloState
//
//  Created by Mika Urakawa on 2021/07/04.
//

import SwiftUI

struct AddingListStateView: View {
    
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "Wash the car"))
    }
    
    var body: some View {
        List {
            
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
            
        }
    }
}

struct AddingListStateView_Previews: PreviewProvider {
    static var previews: some View {
        AddingListStateView()
    }
}
