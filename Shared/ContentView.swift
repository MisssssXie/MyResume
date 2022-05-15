//
//  ContentView.swift
//  Shared
//
//  Created by cm0676 on 2022/4/1.
//

import SwiftUI

struct ContentView: View {
    
    var resume: [ResumeItem] = []
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
            
                Spacer(minLength: 15)
//                Image(systemName: "square.and.pencil")
                Image("Profile")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.yellow)
                
                List(resume) { item in
       
                    VStack(alignment: .leading) {
                        NavigationLink {
                            DetailView(resumeItem: item)
                        } label: {}
                        
                        Text(item.name)
                            .font(.headline)
                        Text(item.imageName)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        
                    }
                }
            }
            
        }
    }
}

struct DetailView: View {
    var resumeItem: ResumeItem
    
    var body: some View {
        
        Text(resumeItem.content)
            .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(resumeItem:  resume[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(resume: resume)
    }
}


