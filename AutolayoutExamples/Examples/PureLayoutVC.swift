//
//  ViewController.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/20/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import PureLayout

class PureLayoutVC: UIViewController {

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
        
        box.autoPin(toTopLayoutGuideOf: self, withInset: 10)
        box.autoPinEdge(ALEdge.right, to: ALEdge.right, of: view, withOffset: -10)
        box.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: view, withOffset: -25)
        box.autoPinEdge(ALEdge.left, to: ALEdge.left, of: view, withOffset: 10)
        
        header.autoMatch(ALDimension.height, to: ALDimension.height, of: box, withMultiplier: 0.25)
        header.autoPinEdge(ALEdge.top, to: ALEdge.top, of: box)
        header.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
        header.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)
        
        logo.autoPinEdge(ALEdge.top, to: ALEdge.top, of: header, withOffset: 40)
        logo.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: header, withOffset: -40)
        logo.autoAlignAxis(ALAxis.horizontal, toSameAxisOf: header)
        logo.autoAlignAxis(ALAxis.vertical, toSameAxisOf: header)
        
        button.autoSetDimension(ALDimension.height, toSize: 50)
        button.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
        button.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: box)
        button.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)
    }

    @objc func onButtonClick(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}

