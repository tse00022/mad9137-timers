//
//  TimerListView.swift
//  Timers
//
//  Created by EddieTse on 2024-11-01.
//

import Foundation
import SwiftUI

struct TimerListView: View {
    @State var timers: [Timer] = [Timer(duration: 100)]
    
    
    var body: some View{
        NavigationStack{
            List{
                ForEach(timers){
    
                    timer in
                    HStack{
                        Text("\(timer.duration)")
                        Button(action: {
                        }){
                            Text("Update")
                        }
                    }
                    
                }
            }
            .navigationTitle("Timers")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        print("Add")
                    }
                }
            }
        }
        
    }
}

#Preview{
    TimerListView()
}
