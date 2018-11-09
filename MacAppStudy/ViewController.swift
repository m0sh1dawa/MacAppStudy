//
//  ViewController.swift
//  MacAppStudy
//
//  Created by kazuhiko.shimada on 2018/11/09.
//  Copyright © 2018 kazuhiko.shimada. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var imageView: NSImageView!
    
    @IBAction func imageSelectButtonClicked(_ sender: Any) {
        let dialog = NSOpenPanel()
        dialog.canChooseDirectories=false
        dialog.canChooseFiles = true
        dialog.canCreateDirectories = false
        dialog.allowsMultipleSelection = false
        dialog.allowedFileTypes = NSImage.imageTypes
        dialog.begin { (result) -> Void in
            if result.rawValue == NSApplication.ModalResponse.OK.rawValue {
                guard dialog.url != nil else { return }
                self.imageView.image = NSImage(contentsOf: dialog.url!)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

