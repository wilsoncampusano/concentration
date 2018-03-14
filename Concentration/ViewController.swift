//
//  ViewController.swift
//  Concentration
//
//  Created by Wilson Campusano on 3/14/18.
//  Copyright © 2018 Wilson Campusano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var flipLabel: UILabel!
	
	@IBAction func touchFlipCard(_ sender: UIButton) {
		flipCard(withEmoji: "👻", on: sender)
	}
	
	@IBAction func touchSecondCard(_ sender: UIButton) {
		flipCard(withEmoji: "🎃", on: sender)
	}

	
	func flipCard(withEmoji emoji: String, on button: UIButton ){
		if button.currentTitle == emoji {
			button.setTitle("", for: UIControlState.normal)
			button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
		}else{
			button.setTitle(emoji, for: UIControlState.normal)
			button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		}
	}
}
