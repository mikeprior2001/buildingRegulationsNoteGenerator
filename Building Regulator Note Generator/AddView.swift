//
//  AddView.swift
//  Building Regulator Note Generator
//
//  Created by Mike Prior on 02/08/2022.
//

import SwiftUI

struct AddView: View {
    
    @Binding var showingAddView: Bool
    
    @State private var statementTitle = ""
    @State private var statementDescription = ""
    
    var body: some View {
        Form {
            TextField("Statement Title", text: $statementTitle)
            TextField("Statement Description", text: $statementDescription)
            Button("Save Statement") {
                
                showingAddView = false
            }
        }
    }
}

//struct AddView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddView()
//    }
//}
