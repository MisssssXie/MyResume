//
//  ContentView.swift
//  Shared
//
//  Created by cm0676 on 2022/4/1.
//

import SwiftUI

struct ContentView: View {
    
    var programmingBooks: [ProgrammingBook] = []
    
    var body: some View {
        
        NavigationView {
      
            List(programmingBooks) { programmingBook in
                    VStack(alignment: .leading) {
                        NavigationLink {
                            DetailView(book: programmingBook)
                        } label: {}
                        
                        Text(programmingBook.name)
                            .font(.title)
                        Text(programmingBook.publisher)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        
                    }
            }
            
        }
    }
}

struct DetailView: View {
    var book: ProgrammingBook
    
    var body: some View {
        
        Text(book.content)
            .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: programmingBooks[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(programmingBooks: programmingBooks)
    }
}

struct ProgrammingBook: Identifiable {
    var id = UUID()
    var name: String
    var publisher: String
    var content: String
    var imageName: String
}


let programmingBooks: [ProgrammingBook] = [
    ProgrammingBook(name: "Objective-C", publisher: "歐萊禮",   content: "Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. It was the main programming language supported by Apple for the macOS, iOS and iPadOS operating systems, and their respective application programming interfaces (APIs) Cocoa and Cocoa Touch until the introduction of Swift in 2014", imageName: "Objective-C"),
    ProgrammingBook(name: "SwiftUI", publisher: "aPress", content: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs. With a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.", imageName: "SwiftUI"),
    ProgrammingBook(name: "Swift", publisher: "歐萊禮", content: "This article is about the Apple programming language. For the scripting language, see Swift (parallel scripting language).", imageName: "Swift"),
    ProgrammingBook(name: "Python", publisher: "歐萊禮", content: "Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects", imageName: "Python"),
    ProgrammingBook(name: "Java", publisher: "歐萊禮", content: "This article is about a programming language. For the software platform, see Java (software platform). For the software package downloaded from java.com, see Java Platform, Standard Edition. For other uses, see Java (disambiguation)", imageName: "Java")
]
