//
//  SignViewModel.swift
//  KingBurguer
//
//  Created by Mizael Douglas Mello on 24/06/24.
//

import Foundation

protocol SignInViewModelDelegate {
	func viewModelDidChanged(viewModel: SignInViewModel) 
}

class SignInViewModel {
	
	func send() {
		print("Estou no view Model")
	}
	
}
