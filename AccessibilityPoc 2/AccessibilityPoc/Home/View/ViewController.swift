//
//  ViewController.swift
//  AccessibilityPoc
//
//  Created by Taize Carminatti on 15/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    
   
    var arrayProof = ["Outback", "Mercado Livre", "Ayoama"]
    var accessibility = CustomAccessibility()
    
   lazy var viewTop: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4111910164, green: 0.137681812, blue: 0.692540586, alpha: 1)
        return view
    }()
    
    
   lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Agi.png")
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
    
        accessibility.applyAccessibilityImage(image: image, label: "Agibank", hint: "imagem logo Agibank")
        return image
    }()
    
    lazy var imageNotification: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sino.jpeg")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        
        accessibility.applyAccessibilityImage(image: image, label: "Notificação", hint: "Botão Notificação")
        return image
    }()
    
   lazy var imageAvatar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "avatar.jpeg")
        image.clipsToBounds = true
        image.layer.cornerRadius = 30
    
        accessibility.applyAccessibilityImage(image: image, label: "Usuario", hint: "Imagem Usuario")
        return image
    }()
    
    lazy var labelValue: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.adjustsFontSizeToFitWidth = true
        label.font = .preferredFont(forTextStyle: .headline)
        label.adjustsFontForContentSizeCategory = true
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "R$ 10.000,00"
        
        accessibility.applyAccessibilityLabel(label: label, hintText: "Visualizar saldo em conta", labelText: "Saldo em conta" )
        return label
    }()
    
    lazy var buttonOcultBalance: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Ocultar saldo", for: .normal)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        
        accessibility.applyAccessibilityButton(button: button, label: "Botão para ocultar ou visualizar saldo")
        return button
    }()
    
   lazy var buttonDeposit: UIButton = {
        let button = UIButton(type: .custom)
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor.white
        button.setTitle("Depositar", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.3726581931, green: 0.1272892952, blue: 0.6274486184, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.layer.shadowColor = UIColor.darkGray.cgColor
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.55
        button.layer.masksToBounds = false
    
        accessibility.applyAccessibilityButton(button: button, label: "Depositar saldo")
        return button
    }()
    

   lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.backgroundColor = UIColor.clear
        searchBar.barStyle = .default
        searchBar.placeholder = "Encontre seus comprovantes..."
        
        accessibility.applyAccessibilitySearchBar(searchBar: searchBar, label: "Busca")
        return searchBar
    }()
    
    
   lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        addSubviews()
        setupContrains()
        setupTableView()
        
    }
    
    
    func addSubviews(){
        view.addSubview(viewTop)
        view.addSubview(imageLogo)
        view.addSubview(imageNotification)
        view.addSubview(imageAvatar)
        view.addSubview(labelValue)
        view.addSubview(buttonOcultBalance)
        view.addSubview(tableView)
        view.addSubview(buttonDeposit)
        view.addSubview(searchBar)
    }
    
    func setupTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProof.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = arrayProof[indexPath.row]

        cell.detailTextLabel?.textColor = #colorLiteral(red: 0.3726581931, green: 0.1272892952, blue: 0.6274486184, alpha: 1)
        cell.textLabel?.textColor = #colorLiteral(red: 0.3726581931, green: 0.1272892952, blue: 0.6274486184, alpha: 1)
        cell.detailTextLabel?.text = "100,00"
        
        accessibility.applyAccessibilityTableView(cell: cell, hint: "Lista de gastos")
        return cell
    }
    
    
}
