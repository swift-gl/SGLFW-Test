import Foundation
import GLFW

class a {
    
}

func main() {
    
    glfw.initialize()
    defer {
        glfw.terminate()
    }
    
    let window = glfw.Window(width: 800, height: 600, title: "Title", hints: [.samples(4)])
    
    window?.callbacks.closed { window in
        print(window)
        }
//
//    window?.callbacks.focus { window, value in
//        print("\(window) is focused = \(value) -- \(window.isFocused)")
//    }
    
    print(glfw.Monitor.primary.videoModes)
    
    window!.callbacks.focus { window, bool in
//        print("a - \(bool)")
//        print(window.frame)
//        print(size)
        }.size { window, size in
            print("\(size)")
        }.minimize { window, minimized in
            print("minimize - \(minimized)")
            
        }.cursorPosition { window, position in
//            print("cursor = \(position)")
        }.cursorEnter { window, enter in
            print("enter = \(enter)")
            
    }
    
    window!.set(cursor: glfw.Cursor(standart: .hand))
    
//    window?.callbacks.closed(nil)
    while !window!.shouldClose {
        glfw.pollEvents()
        
        window?.title = "\(window?.frame.size)"
        
//        window!.frame.size = CGSize(width: 100, height: 100)
    }
}

main()
