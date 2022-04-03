import SwiftUI

struct SplashView: View{

    @ObservedObject var splashVideModel: SplashViewModel
    
    var body: some View{
        Group{
            switch splashVideModel.uiState{
            case .loading:
                loadingView()
            case .goToSignInScreen:
                splashVideModel.signView()
            case .goToHomeScreen:
                Text("Carregar tela de home")
            case .error(let msgErro):
                loadingView(error: msgErro)
            }
        }.onAppear(perform: splashVideModel.onAppear)
    }
}

/*struct LoadingView: View{
    var body: some View{
        ZStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}
*/

extension SplashView{
    func loadingView(error: String? = nil) -> some View{
        ZStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)){
                        Alert(title: Text("HabitPlus"), message: Text(error), dismissButton: .default(Text("Ok")){
                            //Aqui eu colocaria alguma açao do alert
                        })
                    }
            }
        }
    }
}
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let splashViewModel = SplashViewModel()
        SplashView(splashVideModel: splashViewModel)
    }
}
