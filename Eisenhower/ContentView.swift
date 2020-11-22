//
//  ContentView.swift
//  Eisenhower
//
//  Created by Louis Tsai on 11/21/20.
//

import SwiftUI

struct DummyConstants {
    static let id1 = UUID.init(uuidString: "6371ffd3-6d41-4fcf-9e52-bed08c5817b8")!
    static let id2 = UUID.init(uuidString: "0f1ed849-afa3-48cb-a806-03ed3e5bf3a1")!
    static let id3 = UUID.init(uuidString: "4db873f0-ccf0-412f-998b-bfcff1fc9bae")!
    static let id4 = UUID.init(uuidString: "ae3638d0-dc0c-4b4f-8220-7a8cbbc1aaf1")!
    static let id5 = UUID.init(uuidString: "4e0d5c3a-2d92-444f-bda1-09257ef16bd6")!
}

struct DummyData {
    static let data = DummyData()
    let tasks = [
        Task(id: DummyConstants.id1, title: "Task 1"),
        Task(id: DummyConstants.id2, title: "Task 2"),
        Task(id: DummyConstants.id3, title: "Task 3"),
        Task(id: DummyConstants.id4, title: "Task 4"),
        Task(id: DummyConstants.id5, title: "Task 5")
    ]
    let importance = [
        DummyConstants.id5,
        DummyConstants.id3,
        DummyConstants.id2,
        DummyConstants.id4,
        DummyConstants.id1
    ]
    let urgency = [
        DummyConstants.id5,
        DummyConstants.id4,
        DummyConstants.id3,
        DummyConstants.id2,
        DummyConstants.id1
    ]
    
    private init() {}
}

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            HStack {
                ForEach(DummyData.data.urgency, id: \.self) { taskID in
                    let task = DummyData.data.tasks.first { $0.id == taskID }!
                    VStack {
                        ForEach(DummyData.data.importance, id: \.self) { taskID2 in
                            if taskID2 == task.id {
                                TaskView(task: task)
                            } else {
                                BlankView(color: .black)
                            }
                        }
                    }
                }
                Spacer()
            }
            Spacer()
        }
    }
}



struct BlankView: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .scaledToFill()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
