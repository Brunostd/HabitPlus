import SwiftUI

struct SplashView: View{
    
    @State var state: SplashUIState = .loading
    
    var body: some View{
        switch state {
        case .loading:
            Text("Loading...")
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen:
            Text("Carregar tela de home")
        case .error(let msgErro):
            Text("Houve um erro: \(msgErro)")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
