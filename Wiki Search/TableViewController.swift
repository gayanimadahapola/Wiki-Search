//
//  TableViewController.swift
//  Wiki Search
//
//  Created by Gayani Madubhashini on 2/5/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
}

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var wikiImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private let searchController =
        UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        setupTableViewBackgroundView()
        setupSearchBar()
    }
    
        private func setupSearchBar() {
            //searchController.searchBar.delegate = self
            searchController.dimsBackgroundDuringPresentation = false
            searchController.hidesNavigationBarDuringPresentation = false
            searchController.searchBar.placeholder = "Search any Topic"
            definesPresentationContext = true
            tableView.tableHeaderView = searchController.searchBar
        }

        
        private func setupTableViewBackgroundView() {
            let backgroundViewLabel = UILabel(frame: .zero)
            backgroundViewLabel.textColor = .darkGray
            backgroundViewLabel.numberOfLines = 0
            backgroundViewLabel.text =
            "Oops, /n No results to show! ..."
            tableView.backgroundView = backgroundViewLabel
        }

    
}



