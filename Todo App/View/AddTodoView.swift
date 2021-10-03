//
//  AddTodoView.swift
//  Todo App
//
//  Created by Agbesi Amenyo on 03/10/2021.
//

import SwiftUI

struct AddTodoView: View {
    
//    MARK : - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @State private var name : String = ""
    @State private var priority : String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    
    //    MARK : - BODY
    var body: some View {
        
        NavigationView{
            VStack{
                Form {
                    //MARK : -TODO NAME
                    TextField("Todo", text: $name)
                    
                    //MARK : - TODO PRIORITY
                    Picker("Priority", selection: $priority){
                        ForEach(priorities , id : \.self ){
                            Text ($0)
                            
                        }
                    }//END : PICKER
                    .pickerStyle(SegmentedPickerStyle())
                    
                    //MARK : - SAVE BUTTON
                    Button("Save", action: {
                        print("Save a todo item")
                    })
                } //END : FORM
                Spacer()
            }// END : VSTACK
            .navigationBarTitle ("New Todo", displayMode: .inline )
            .navigationBarItems(trailing:
              Button(action : {
                self.presentationMode.wrappedValue.dismiss()
                
            }){
                Image ( systemName: "xmark")
            }
            
            
            
            )
        } // END : NAVIGATION
       
    }
}


//    MARK : - PREVIEW
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
