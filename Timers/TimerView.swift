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
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Timers")
                
                //Pickers
                HStack{
                    Picker(
                        selection: $hours, label:
                            Text("Hours")){
                                ForEach(0..<24){hour in
                                    Text("\(hour)")
                                }
                            }.pickerStyle(WheelPickerStyle())
                    Text("H")
                    
                    Picker(
                        selection: $minutes, label:
                            Text("Minutes")){
                                ForEach(0..<60){minute in
                                    Text("\(minute)")
                                }
                            }.pickerStyle(WheelPickerStyle())
                    Text("M")
                    
                    Picker(
                        selection: $seconds, label:
                            Text("Seconds")){
                                ForEach(0..<60){second in
                                    Text("\(second)")
                                }
                            }.pickerStyle(WheelPickerStyle())
                    Text("S")
                }
                .padding()
                
                // Presets
                HStack{
                    Button{} label:{
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
                        print("Cancel")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Start") {
                        print("Start")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TimerView()
}
