//
//  TimersListViewModel.swift
//  Timers
//
//  Created by EddieTse on 2024-11-05.
//

import SwiftUI

class TimersListViewModel: ObservableObject {
    @Published var timers: [Timer] = []
    
    func addNew(_ timer: Timer) {
        timers.append(timer)
    }
    
}
