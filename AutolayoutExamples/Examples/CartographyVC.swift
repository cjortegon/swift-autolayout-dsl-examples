//
//  ViewController.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/20/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import Cartography

class CartographyVC: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let box = UIView()
        box.backgroundColor = UIColor.kBlue
        
        let header = UIImageView()
        header.image = UIImage(named: "bogota")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "grability")
        logo.contentMode = .scaleAspectFit
        
        let button = UIButton()
        button.setTitle("Go to list", for: .normal)
        button.backgroundColor = UIColor.kGreen
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(button)
        
        constrain(view, box) { view, box in
            if #available(iOS 11.0, *) {
                box.top == view.safeAreaLayoutGuide.top + 10
            } else {
                box.top == view.layoutMarginsGuide.top + 10
            }
            box.right == view.right - 10
            box.bottom == view.bottom - 25
            box.left == view.left + 10
        }
        
        constrain(box, header) { box, header in
            header.height == box.height / 4
            header.top == box.top
            header.right == box.right
            header.left == box.left
        }
        
        constrain(header, logo) { header, logo in
            logo.height == header.height / 2
            logo.center == header.center
        }
        
        constrain(box, button) { box, button in
            button.height == 50
            button.right == box.right
            button.bottom == box.bottom
            button.left == box.left
        }
    }

    @objc func onButtonClick(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}

