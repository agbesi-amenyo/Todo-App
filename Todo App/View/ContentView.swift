//
//  ContentView.swift
//  Todo App
//
//  Created by Agbesi Amenyo on 03/10/2021.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    // MARK : - PROPERTIES
    @State private var showingAddTodoView : Bool  = false
    // MARK : - BODY
    
    var body: some View {
        
        NavigationView{
            List (0..<5){ item in
                Text("Hello World!")
            }//:LIST
            .navigationBarTitle ("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
             Button ( action : {
                //show to do
                self.showingAddTodoView.toggle()
                
            }){
                Image(systemName: "plus")
            } // ADD BUTTON
            )
            .sheet(isPresented : $showingAddTodoView){
                AddTodoView()
            }
            
        }// MARK : - NAVIGATION
    }

}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
