//
//  HomeViewController.swift
//  EcomUiKit
//
//  Created by Anaz on 19/06/26.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Shop"
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search products"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private let categoryListView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupSubviews()
        setupConstraints()
        addColoredViews()
    }
    
    private func addColoredViews() {
        let colors: [UIColor] = [
            .systemRed,
            .systemBlue,
            .systemGreen,
            .systemOrange,
            .systemPurple,
            .systemTeal,
            .systemPink,
            .systemCyan,
            .systemGray,
            .systemMint,
            .systemIndigo,
            .systemBrown,
            .systemYellow
        ]
        
        for color in colors {
            let squareView = UIView()
            squareView.backgroundColor = color
            squareView.layer.cornerRadius = 8
            squareView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                squareView.widthAnchor.constraint(equalToConstant: 80),
                squareView.heightAnchor.constraint(equalToConstant: 80)
            ])
            
            stackView.addArrangedSubview(squareView)
        }
    }
    
    private func setupSubviews () {
        view.addSubview(titleLabel)
        view.addSubview(searchBar)
        view.addSubview(categoryListView)
        categoryListView.addSubview(stackView)
    }
    
    private func setupConstraints () {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            searchBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            categoryListView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            categoryListView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            categoryListView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            categoryListView.heightAnchor.constraint(equalToConstant: 80),
            
            stackView.topAnchor.constraint(equalTo: categoryListView.contentLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: categoryListView.contentLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: categoryListView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: categoryListView.contentLayoutGuide.trailingAnchor),
            
            stackView.heightAnchor.constraint(equalTo: categoryListView.contentLayoutGuide.heightAnchor)
        ])
    }
}
