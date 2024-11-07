//
//  TimerView.swift
//  Timers
//
//  Created by EddieTse on 2024-11-01.
//

import Foundation
import SwiftUI

struct TimerView: View {
    @State var hours: TimeInterval = 0
    @State var minutes: TimeInterval = 0
    @State var seconds: TimeInterval = 0
    
    @Binding var shouldCose: Bool
    
    @EnvironmentObject var model: TimersListViewModel
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Timers")
                
                //Pickers
                HStack{
                    Picker(
                        selection: Binding(
                            get: { Int(hours) },
                            set: { hours = TimeInterval($0) }
                        ),
                        label: Text("Hours")
                    ){
                        ForEach(0..<24) { hour in
                            Text("\(hour)").tag(hour)
                        }
                    }.pickerStyle(WheelPickerStyle())
                    Text("H")
                    
                    Picker(
                        selection: Binding(
                            get: { Int(minutes) },
                            set: { minutes = TimeInterval($0) }
                        ),
                        label: Text("Minutes")
                    ){
                        ForEach(0..<60) { minute in
                            Text("\(minute)").tag(minute)
                        }
                    }.pickerStyle(WheelPickerStyle())
                    Text("M")
                    
                    Picker(
                        selection: Binding(
                            get: { Int(seconds) },
                            set: { seconds = TimeInterval($0) }
                        ),
                        label: Text("Seconds")
                    ){
                        ForEach(0..<60) { second in
                            Text("\(second)").tag(second)
                        }
                    }.pickerStyle(WheelPickerStyle())
                    Text("S")
                }
                .padding()
                .padding()
                
                // Presets
                HStack{
                    Button{
                        model.addNew(Timer(duration: 60))
                        shouldCose.toggle()
                        
                    } label:{
                        VStack{
                            Text("1")
                            Text("min")
                        }
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background{
                            Circle()
                        }
                    }
                    
                    Button{} label:{
                        VStack{
                            Text("3")
                            Text("min")
                        }
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background{
                            Circle()
                        }
                    }
                    
                    Button{} label:{
                        VStack{
                            Text("10")
                            Text("min")
                        }
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background{
                            Circle()
                        }
                    }
                }
                
                
                
                
                Spacer()
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        shouldCose.toggle()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Start") {
                        let totalSeconds = hours * 3600 + minutes * 60 + seconds
                        model.addNew(Timer(duration: totalSeconds))
                        shouldCose.toggle()
                    }
                }
            }
        }
        .padding()
    }
}

//#Preview {
//    TimerView()
//}
