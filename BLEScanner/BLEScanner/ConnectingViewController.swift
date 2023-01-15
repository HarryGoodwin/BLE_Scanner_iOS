//
//  LoadingViewController.swift
//  BLEScanner
//
//  Created by HARRY G GOODWIN on 22/10/2017.
//  Copyright © 2017 GG. All rights reserved.
//

import UIKit

protocol ConnectingViewControllerDelegate: AnyObject {
    func didTapCancel(_ vc: ConnectingViewController)
}

class ConnectingViewController: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var loadingOverlayView: UIView!
    @IBOutlet private weak var cancelButton: UIButton!
    
    weak var delegate: ConnectingViewControllerDelegate?
    var peripheralName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Connecting to \(peripheralName)..."
        loadingOverlayView.layer.cornerRadius = 3
        cancelButton.layer.cornerRadius = 3
    }
    
    @IBAction private func didTapCancelButton(_ sender: Any) {
        delegate?.didTapCancel(self)
    }
}
