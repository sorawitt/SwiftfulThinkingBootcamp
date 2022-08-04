//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 4/8/2565 BE.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State private var selectDate: Date = Date()
    var body: some View {
        DatePicker("Select a date", selection: $selectDate, displayedComponents: [.hourAndMinute])
//            .datePickerStyle(.graphical)
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
