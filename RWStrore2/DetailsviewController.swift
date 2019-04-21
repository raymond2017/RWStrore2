//
//  DetailsviewController.swift
//  RWStrore2
//
//  Created by Raymond on 4/21/19.
//  Copyright © 2019 Raymond. All rights reserved.
//

import Cocoa

class DetailsviewController: NSViewController {
    
    @IBOutlet weak var audienceLabel: NSTextField!
    @IBOutlet weak var descriptionLabel: NSTextField!
    @IBOutlet weak var titleLabel: NSTextField!
    @IBOutlet weak var productImageView: NSImageView!
    
    var selectProduct: Product? {
        didSet{
            updateUI()
        }
    }
    
    private func updateUI() {
        if isViewLoaded {
            if let product = selectProduct {
                productImageView.image = product.image
                titleLabel.stringValue = product.title
                audienceLabel.stringValue = product.audience
                descriptionLabel.stringValue = product.descriptionText
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    override func viewWillAppear() {
        super.viewWillAppear()
        updateUI()
    }
}
