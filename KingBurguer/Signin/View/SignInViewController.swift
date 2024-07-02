//
//  SignInViewController.swift
//  KingBurguer
//
//  Created by Mizael Douglas Mello on 04/06/24.
//

import Foundation
import UIKit

class SignInViewController : UIViewController {
	
	let email: UITextField = {
		let ed = UITextField()
		ed.translatesAutoresizingMaskIntoConstraints = false
		
		ed.backgroundColor = .blue
		ed.textColor = .white
		ed.placeholder = "Entre com seu email."
		return ed
	}()
	
	let passoword: UITextField = {
		let ed = UITextField()
		ed.translatesAutoresizingMaskIntoConstraints = false
		ed.backgroundColor = .red
		ed.textColor = .white
		ed.placeholder = "Entre com sua senha."
		return ed
	}()
	
	lazy var send: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		
		btn.setTitle("Entrar", for: .normal)
		btn.setTitleColor(.black, for: .normal)
		btn.backgroundColor = .yellow
		btn.layer.cornerRadius = 10
		btn.addTarget(self, action: #selector(sendDidTap), for: .touchUpInside)
		return btn
	}()
	
	var viewModel: SignInViewModel?
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .white
		
		view.addSubview(email)
		view.addSubview(passoword)
		view.addSubview(send)
		
		let emailConstraints = [
			email.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			email.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100.0),
			email.heightAnchor.constraint(equalToConstant: 50.0)
		]
		
		let passowordConstraints = [
			passoword.leadingAnchor.constraint(equalTo: email.leadingAnchor),
			passoword.trailingAnchor.constraint(equalTo: email.trailingAnchor),
			passoword.topAnchor.constraint(equalTo: email.bottomAnchor,constant: 10),
			passoword.heightAnchor.constraint(equalToConstant: 50.0)
		]
		
		let sendConstraints = [
			send.leadingAnchor.constraint(equalTo: passoword.leadingAnchor,constant: 30),
			send.trailingAnchor.constraint(equalTo: passoword.trailingAnchor,constant: -30),
			send.topAnchor.constraint(equalTo: passoword.bottomAnchor,constant: 30),
			send.heightAnchor.constraint(equalToConstant: 50.0)
		]
		
		NSLayoutConstraint.activate(emailConstraints)
		NSLayoutConstraint.activate(passowordConstraints)
		NSLayoutConstraint.activate(sendConstraints)
		
		
		
	}
	
	@objc func sendDidTap(_ sender: UIButton) {
		viewModel?.send()
	}
}
