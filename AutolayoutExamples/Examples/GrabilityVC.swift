//
//  CustomVC.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/23/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import SnapKit

class GrabilityVC: UIViewController {
    
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
        
        box.snp.makeConstraints {
            $0.top      |=| (topLayoutGuide.s_bottom + 10)
            $0.bottom   |=| (view.s_bottom - 25)
            $0.left     |=| (view.s_left + 10)
            $0.right    |=| (view.s_right - 10)
        }
        
        header.snp.makeConstraints {
            $0.height   |=| (box.s_height * 0.25)
            $0.top      |=| box.s_top
            $0.right    |=| box.s_right
            $0.left     |=| box.s_left
        }
        
        logo.snp.makeConstraints {
            $0.height   |=| (header.s_height * 0.5)
            $0.center   |=| header.s_center
        }
        
        button.snp.makeConstraints {
            $0.height   |=| 50
            $0.right    |=| box.s_right
            $0.bottom   |=| box.s_bottom
            $0.left     |=| box.s_left
        }
    }

    @objc func onButtonClick(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
