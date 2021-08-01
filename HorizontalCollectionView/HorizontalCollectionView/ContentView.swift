//
//  ContentView.swift
//  HorizontalCollectionView
//
//  Created by Angelos Staboulis on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var selected:String!="0"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                Text("Horizontal ScrollView in SwiftUI")
        }).position(x: 200, y: 50)
        ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            HStack{
                ForEach(0..<100){item in
                    Text(String(item)).foregroundColor(.black).onTapGesture(perform: {
                        self.selected = String(item)
                    })
                    
                }.position(x: 10, y: 10)
            }
            
        })
        Text("selected value="+self.selected!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
