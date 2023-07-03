//
//  ViewController.swift
//  GradientView
//
//  Created by Mikhail Andreev on 03.07.2023.
//

import UIKit

class ViewController: UIViewController
{
	private let gradientView = GradientView(frame: .init(x: 100, y: 0, width: 100, height: 100))

	override func viewDidLoad()
	{
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		view.addSubview(gradientView)
	}

	override func viewWillLayoutSubviews()
	{
		super.viewWillLayoutSubviews()
		gradientView.center.y = view.center.y
	}
}
