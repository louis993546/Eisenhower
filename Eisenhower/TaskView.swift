//
//  TaskView.swift
//  Eisenhower
//
//  Created by Louis Tsai on 11/22/20.
//

import SwiftUI

struct TaskView: View {
    var task: Task
    
    var body: some View {
        ZStack {
            BlankView(color: .yellow)
            Text(task.title)
                .foregroundColor(.black)
        }
        .padding()
    }
}
struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(id: UUID(), title: "Testing"))
    }
}
