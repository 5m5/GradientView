//
//  GradientView.swift
//  GradientView
//
//  Created by Mikhail Andreev on 03.07.2023.
//

import UIKit

class GradientView: UIView
{

	override init(frame: CGRect)
	{
		super.init(frame: frame)
		backgroundColor = .red
		layer.cornerRadius = 16
		setupGradient()
		setupShadow()
	}

	required init?(coder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}

	private func setupGradient()
	{
		let gradientLayer = CAGradientLayer()
		gradientLayer.frame = bounds
		gradientLayer.colors = [UIColor.systemYellow.cgColor,
								UIColor.systemBlue.cgColor]
		gradientLayer.cornerRadius = layer.cornerRadius
		gradientLayer.frame = bounds
		layer.addSublayer(gradientLayer)
	}

	private func setupShadow()
	{
		layer.shadowColor = UIColor.black.cgColor
		layer.shadowOpacity = 1
		layer.shadowOffset = .zero
		layer.shadowRadius = layer.cornerRadius
		layer.masksToBounds = false
		layer.shadowPath = UIBezierPath(rect: bounds).cgPath
	}

}
