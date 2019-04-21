//
//  OverviewController.swift
//  RWStrore2
//
//  Created by Raymond on 4/21/19.
//  Copyright © 2019 Raymond. All rights reserved.
//

import Cocoa

class OverviewController: NSViewController {

    @IBOutlet weak var descriptionLabel: NSTextField!
    @IBOutlet weak var productImageView: NSImageView!
    @IBOutlet weak var priceLabel: NSTextField!
    @IBOutlet weak var titleLabel: NSTextField!
    let numberFormatter = NumberFormatter()
    
    var selectProduct: Product? {
        
        didSet{
            print(11)
            updateUI()
        }
    }
    
    private func updateUI() {
        if isViewLoaded {
            if let product = selectProduct {
                productImageView.image = product.image
                titleLabel.stringValue = product.title
                priceLabel.stringValue = numberFormatter.string(from:product.price) ?? "n/a"
                descriptionLabel.stringValue = product.descriptionText
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        numberFormatter.numberStyle = .currency
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        updateUI()
    }
    
}
