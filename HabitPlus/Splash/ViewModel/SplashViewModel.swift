import SwiftUI

class SplashViewModel: ObservableObject{
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        // faz algo assincrono e muda o estado da uiState
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            //self.uiState = .error("Tela de erro")
            self.uiState = .goToSignInScreen
        }
    }
}

extension SplashViewModel{
    func signView() -> some View{
        return SplashViewRouter.makeSignInView()
    }
}
