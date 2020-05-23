//
//  ViewController.swift
//  Soundboard
//
//  Created by Benjamin Mecanovic on 23/05/2020.
//  Copyright © 2020 hydro1337x. All rights reserved.
//

import UIKit

class SBViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var mamicButton: UIButton!
    @IBOutlet private weak var zuckerbergButton: UIButton!
    @IBOutlet private weak var muskButton: UIButton!
    
    // MARK: - Properties
    private var viewModel: SBViewModel!
    enum Person: Int {
        case mamic = 1
        case zuckerberg = 2
        case musk = 3
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = SBViewModel()
        setupUI()
    }

    // MARK: - Actions
    @IBAction func personButtonTapped(_ sender: UIButton) {
        guard let person = Person(rawValue: sender.tag) else { return }
        switch person {
        case .mamic:
            viewModel.play(.mamic)
        
        case .zuckerberg:
            viewModel.play(.zuckerberg)
            
        case .musk:
            viewModel.play(.musk)
        }
    }
    
    // MARK: - Methods
    private func setupUI() {
        mamicButton.imageView?.contentMode = .scaleAspectFill
        zuckerbergButton.imageView?.contentMode = .scaleAspectFill
        muskButton.imageView?.contentMode = .scaleAspectFill
    }
    
}

