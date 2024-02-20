import SwiftUI
import shared

struct SecondPage: View {
    
    let name: String
    let birthdate: String
    
    var age: Int? {
        guard let birthYear = Int(birthdate) else { return nil }
        return 2024 - birthYear
    }
    
    var body: some View {
        if let age = age {
                    return Text("Vous êtes \(name), vous avez \(age) ans")
                } else {
                    return Text("Invalid birthdate")
                }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
