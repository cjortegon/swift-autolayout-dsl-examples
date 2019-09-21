//
//  ViewController.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/20/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import Mortar

class ViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        /* Mortar */
        let mortar = UIButton()
        view.addSubview(mortar)
        mortar.setTitle("Mortar", for: .normal)
        mortar.backgroundColor = UIColor.kGreen
        
        mortar.m_height |=| 50
        mortar.m_top |=| m_topLayoutGuideBottom + 10
        mortar.m_left |=| view.m_left + 10
        mortar.m_right |=| view.m_right - 10
        mortar.addTarget(self, action: #selector(goToMortar(button:)), for: .touchUpInside)
        
        /* Snapkit */
        let snapkit = UIButton()
        view.addSubview(snapkit)
        snapkit.setTitle("SnapKit", for: .normal)
        snapkit.backgroundColor = UIColor.kBlue
        
        snapkit.m_height |=| 50
        snapkit.m_top |=| mortar.m_bottom + 10
        snapkit.m_left |=| view.m_left + 10
        snapkit.m_right |=| view.m_right - 10
        snapkit.addTarget(self, action: #selector(goToSnapkit(button:)), for: .touchUpInside)
        
        /* Cartography */
        let cartography = UIButton()
        view.addSubview(cartography)
        cartography.setTitle("Cartography", for: .normal)
        cartography.backgroundColor = UIColor.kGreen
        
        cartography.m_height |=| 50
        cartography.m_top |=| snapkit.m_bottom + 10
        cartography.m_left |=| view.m_left + 10
        cartography.m_right |=| view.m_right - 10
        cartography.addTarget(self, action: #selector(goToCartography(button:)), for: .touchUpInside)
        
        /* Pure Layout */
        let purelayout = UIButton()
        view.addSubview(purelayout)
        purelayout.setTitle("Pure Layout", for: .normal)
        purelayout.backgroundColor = UIColor.kBlue
        
        purelayout.m_height |=| 50
        purelayout.m_top |=| cartography.m_bottom + 10
        purelayout.m_left |=| view.m_left + 10
        purelayout.m_right |=| view.m_right - 10
        purelayout.addTarget(self, action: #selector(goToPureLayout(button:)), for: .touchUpInside)
    }

    @objc func goToMortar(button: UIButton) {
        navigationController?.pushViewController(MortarVC(), animated: true)
    }

    @objc func goToSnapkit(button: UIButton) {
        navigationController?.pushViewController(SnapkitVC(), animated: true)
    }

    @objc func goToCartography(button: UIButton) {
        navigationController?.pushViewController(CartographyVC(), animated: true)
    }

    @objc func goToPureLayout(button: UIButton) {
        navigationController?.pushViewController(PureLayoutVC(), animated: true)
    }

}
