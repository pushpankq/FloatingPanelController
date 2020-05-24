//
//  ViewController.swift
//  FloatingPanelController
//
//  Created by Puspank Kumar on 24/05/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViews()
    }
    
    // fpc_content


}

extension ViewController: FloatingPanelControllerDelegate {
    
    private func configureViews() {
        let fpc = FloatingPanelController()
        fpc.delegate = self
        fpc.isRemovalInteractionEnabled = false
        guard let contentVC = storyboard?.instantiateViewController(identifier: "fpc_content") as? ContentViewController else {
            return
        }
        
        fpc.set(contentViewController: contentVC)
        fpc.addPanel(toParent: self)
    }
}

