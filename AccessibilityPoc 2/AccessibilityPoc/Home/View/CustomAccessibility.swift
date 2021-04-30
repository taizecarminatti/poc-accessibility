//
//  CustomAccessibility.swift
//  AccessibilityPoc
//
//  Created by Taize Carminatti on 29/04/21.
//

import UIKit

class CustomAccessibility{
    
    func applyAccessibilityImage(image: UIImageView, label: String, hint: String){
        image.isAccessibilityElement = true
        image.accessibilityTraits = .none
        image.accessibilityHint = hint
        image.accessibilityLabel = label
        image.adjustsImageSizeForAccessibilityContentSizeCategory = true
    }
    
    func applyAccessibilityButton(button: UIButton,  label: String){
        button.isAccessibilityElement = true
        button.accessibilityTraits = .none
        button.accessibilityLabel = label
    }
    
    func applyAccessibilityLabel(label: UILabel, hintText: String, labelText: String?){
        label.accessibilityTraits = .none
        label.accessibilityHint = hintText
    }
    
    func applyAccessibilitySearchBar(searchBar: UISearchBar, label: String){
        searchBar.accessibilityTraits = .none
        searchBar.accessibilityHint = label //"Busca"
    }
    
    func applyAccessibilityTableView(cell: UITableViewCell, hint: String){
        cell.accessibilityTraits = .none
        cell.accessibilityHint = hint
    }
    
    func applyAccessibilityTabBar(tabBar: UITabBar, label: String){
        tabBar.isAccessibilityElement = true
        tabBar.accessibilityTraits = .none
        tabBar.accessibilityLabel = label
    }
    
}
