import SwiftUI

enum SplashViewRouter{
    
    static func makeSignInView() -> some View{
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
    
}
