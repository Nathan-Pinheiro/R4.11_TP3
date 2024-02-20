import SwiftUI
import shared

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var birthdate: String = ""
    @State private var isActive: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenue !")
                Text("Name : " + username)
                Text("Birth date : " + birthdate)
                TextField(
                    "User name",
                    text: $username
                )
                TextField(
                    "Birth date",
                    text: $birthdate
                )
                NavigationLink (
                    destination : SecondPage(name : username, birthdate: birthdate),
                    label : {
                        Text("Go to Second Page")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
