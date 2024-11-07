//
//  TimerListView.swift
//  Timers
//
//  Created by EddieTse on 2024-11-01.
//

import Foundation
import SwiftUI

struct TimerListView: View {
    @ObservedObject var model = TimersListViewModel()
    @State var isSheetPresented = false
    
    @State var shouldClose: TimeInterval = 0
    
    var body: some View{
        NavigationStack{
            List{
                ForEach(model.timers){timer in
                    Text("\(timer.duration)")
                }
            }
            .navigationTitle("Timers")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add"){
                        isSheetPresented.toggle()
                    }
                    
                }
            }
        }.sheet(isPresented: $isSheetPresented) {
            TimerView(shouldCose: $isSheetPresented)
        }.environmentObject(model)
    }
    
}

#Preview{
    TimerListView()
}
