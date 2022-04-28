import SwiftUI

struct ContentView: View {
    @State var text = "Select Your Style."
    @State var capMode = 1
    
    var body: some View {
        VStack {
            Spacer()
            
            if capMode == 1 {
                Text(text.uppercased())
            } else if capMode == 2 {
                Text(text.capitalized)
            } else if capMode == 3 {
                Text(text.lowercased())
            }
            
            Spacer()
            
            Button(action: {
                capMode = 1
            }) {
                TextButton(title: "Caps", color: .orange)
            }
            
            Button(action: {
                capMode = 2
            }) {
                TextButton(title: "Capitalized", color: .green)
            }
            
            Button(action: {
                capMode = 3
            }) {
                TextButton(title: "Lowercase", color: .red)
            }
            
        }
        
    }
}

struct TextButton: View {
    let title: String
    let color: Color
    
    var body: some View {
        Text(title)
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(color)
            .font(.body)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
