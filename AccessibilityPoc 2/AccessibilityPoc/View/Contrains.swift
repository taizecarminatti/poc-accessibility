//
//  Contrains.swift
//  AccessibilityPoc
//
//  Created by Taize Carminatti on 16/04/21.
//

import UIKit
import SnapKit

extension ViewController {


func setupContrains(){
    viewTop.snp.makeConstraints { (make) in
        make.height.equalTo(300)
        make.leading.top.trailing.equalToSuperview()
    }
    
    imageLogo.snp.makeConstraints { (make) in
        make.width.height.equalTo(44)
        make.top.equalTo(50)
        make.leading.equalTo(20)
    }
    imageNotification.snp.makeConstraints { (make) in
        make.width.height.equalTo(44)
        make.top.equalTo(50)
        make.trailing.equalTo(-20)
    }
    
    imageAvatar.snp.makeConstraints { (make) in
        make.width.height.equalTo(60)
        make.top.equalTo(80)
        make.centerX.equalToSuperview()
    }
    
    labelValue.snp.makeConstraints { (make) in
        make.width.equalTo(self.view)
        make.height.equalTo(50)
        make.top.equalTo(imageAvatar.snp.bottom).offset(10)
        make.centerX.equalToSuperview()
    }
    
    buttonOcultBalance.snp.makeConstraints { (make) in
        make.width.equalTo(300)
        make.height.equalTo(44)
        make.top.equalTo(labelValue.snp.bottom).offset(2)
        make.centerX.equalToSuperview()
        
    }
    
    tableView.snp.makeConstraints{(make) in
        make.top.equalTo(searchBar.snp.bottom).offset(5)
        make.leading.trailing.bottom.equalToSuperview()
    }
    
    buttonDeposit.snp.makeConstraints { (make) in
        make.top.equalTo(275)
        make.width.equalTo(300)
        make.height.equalTo(50)
        make.centerX.equalToSuperview()
    }
    
    searchBar.snp.makeConstraints{(make)in
        make.width.equalTo(self.view)
        make.height.equalTo(buttonDeposit.snp.height)
        make.top.equalTo(buttonDeposit.snp.bottom).offset(10)
    }
  }
}
