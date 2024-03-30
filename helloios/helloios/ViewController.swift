//
//  ViewController.swift
//  HelloIOS
//
//  Created by 이하은 on 3/30/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize UILabel
        let label = UILabel()

        // Set the text of the label
        label.text = "Go Seahawks!" // Or "Go Dawgs!" or "Cougars suck!"
        
        // Set font to bold italic, if available, and size. Adjust size as needed.
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold).italic()

        // Set text color to white
        label.textColor = .white
        
        // Set background color to purple
        label.backgroundColor = .purple
        
        // Set the position and size of the label
        label.frame = CGRect(x: 20, y: 50, width: 300, height: 50)
        
        // Enable Autoresizing Mask into Constraints
        label.translatesAutoresizingMaskIntoConstraints = true
        
        // Add the label to the ViewController's view
        self.view.addSubview(label)
    }
}

extension UIFont {
    func italic() -> UIFont {
        return UIFont(descriptor: fontDescriptor.withSymbolicTraits(.traitItalic) ?? fontDescriptor, size: 0)
    }
}
