//
//  ImagePresentationViewController.swift
//  splitter
//
//  Created by William Bodily on 11/7/18.
//  Copyright © 2018 William Bodily. All rights reserved.
//

import UIKit

class ImagePresentationViewController: UIViewController {

    @IBOutlet weak var cellImage: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellImage.image = image
    }


}

