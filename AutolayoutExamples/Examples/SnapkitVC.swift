//
//  ViewController.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/20/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import SnapKit

class SnapkitVC: UIViewController {

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
        
        box.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(-25)
            make.left.equalTo(view).offset(10)
        }
        
        header.snp.makeConstraints { make in
            make.height.equalTo(box.snp.height).dividedBy(4)
            make.top.equalTo(box.snp.top)
            make.right.equalTo(box.snp.right)
            make.left.equalTo(box.snp.left)
        }
        
        logo.snp.makeConstraints { make in
            make.height.equalTo(header.snp.height).dividedBy(2)
            make.center.equalTo(header.snp.center)
        }
        
        button.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.right.equalTo(box.snp.right)
            make.bottom.equalTo(box.snp.bottom)
            make.left.equalTo(box.snp.left)
        }
    }

    @objc func onButtonClick(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
