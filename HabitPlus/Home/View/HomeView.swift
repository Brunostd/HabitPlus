import SwiftUI

struct HomeView: View{
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View{
        Text("Olá, home")
    }
}

struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView(viewModel: HomeViewModel())
    }
}
