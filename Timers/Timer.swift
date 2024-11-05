//
//  Timer.swift
//  Timers
//
//  Created by EddieTse on 2024-11-01.
//

import SwiftUI

struct Timer: Identifiable {
    var id: UUID = UUID()
    var duration: TimeInterval
    var startTime: Date = Date()
    var elapsed : TimeInterval {
        Date().timeIntervalSince(startTime)
    }
    var isRunning: Bool {
        elapsed < duration
    }
}
