//
//  ViewController.swift
//  SwiftlyVolumeSlider
//
//  Created by Maxim Bilan on 6/6/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SwiftlyVolumeSliderDelegate {

	// MARK: - Outlets
	
	@IBOutlet weak var volumeSlider: SwiftlyVolumeSlider!
	@IBOutlet weak var verticalVolumeSlider: SwiftlyVolumeSlider!
	@IBOutlet weak var testLabel: UILabel!
	
	// MARK: - UIViewController methods
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		volumeSlider.delegate = self
		volumeSlider.bgColor = UIColor.whiteColor()
		volumeSlider.direction = SwiftlyVolumeSlider.PickerDirection.Horizontal
		volumeSlider.minValue = 1
		volumeSlider.maxValue = 20
		volumeSlider.currentValue = 17
		volumeSlider.sliderImage = UIImage(named: "Slider")
		volumeSlider.sliderImageOffset = CGPoint(x: 0, y: -1)
		volumeSlider.sliderSize = CGSize(width: 30, height: 15)
		volumeSlider.bgColor = UIColor.yellowColor()
		volumeSlider.useNormalIndicator = true
		volumeSlider.normalValue = 10
		
		verticalVolumeSlider.delegate = self
		verticalVolumeSlider.direction = SwiftlyVolumeSlider.PickerDirection.Vertical
	}

	// MARK: - SwiftlyVolumeSliderDelegate
	
	func valueChanged(value: Int) {
		testLabel.text = "\(value)"
	}
	
}
