//
//  ViewController.swift
//  AutolayoutDSLTest
//
//  Created by Camilo Ortegon on 9/20/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import Mortar

class MortarVC: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
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
        
        box.m_top |=| m_topLayoutGuideBottom + 10
        box.m_right |=| view.m_right - 10
        box.m_bottom |=| view.m_bottom - 25
        box.m_left |=| view.m_left + 10
        
        header.m_height |=| box.m_height / 4
        header.m_top |=| box.m_top
        header.m_right |=| box.m_right
        header.m_left |=| box.m_left
        
        logo.m_height |=| header.m_height / 2
        logo.m_center |=| header.m_center
        
        button.m_height |=| 50
        button.m_right |=| box.m_right
        button.m_bottom |=| box.m_bottom
        button.m_left |=| box.m_left
    }

    @objc func onButtonClick(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
