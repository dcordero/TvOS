//
//  LoadingViewController.swift
//  TvOS-SwiftTemplates
//
//  Created by David Cordero on 01.06.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit


private let defaultSpacing: CGFloat = 40
private let defaultFontSize: CGFloat = 57
private let defaultFont: UIFont = .systemFont(ofSize: defaultFontSize)
private let defaultTextColor: UIColor = UIColor(red:0.47, green:0.47, blue:0.47, alpha:1.0)

final public class LoadingViewController: UIViewController {
    
    public var backgroundBlurEffectSyle: UIBlurEffect?
    public var loadingTitle: String?
    public var spacing: CGFloat = defaultSpacing
    public var font: UIFont = defaultFont
    public var textColor: UIColor = defaultTextColor
    
    private var backgroundView: UIVisualEffectView!
    private var titleLabel: UILabel!
    private var spinnerView: UIActivityIndicatorView!
    
    convenience public init(withTitle title: String) {
        self.init()
        self.loadingTitle = title
    }
    
    // MARK: - UIViewController
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    // MARK: - Private
    
    private func setUpView() {
        setUpBackgroundView()
        setUpTitleLabel()
        setUpSpinnerView()
        
        setUpContrainsts()
    }
    
    private func setUpBackgroundView() {
        
        if let backgroundBlurEffectSyle = backgroundBlurEffectSyle {
            backgroundView = UIVisualEffectView(effect:backgroundBlurEffectSyle)
        }
        else {
            switch traitCollection.userInterfaceStyle {
            case .dark:
                backgroundView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
            default:
                backgroundView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            }
        }
        
        view.addSubview(backgroundView)
    }
    
    private func setUpTitleLabel() {
        titleLabel = UILabel()
        titleLabel.font = font
        titleLabel.textColor = textColor
        titleLabel.text = loadingTitle
        view.addSubview(titleLabel)
    }
    
    private func setUpSpinnerView() {
        spinnerView  = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        spinnerView.color = textColor
        spinnerView.startAnimating()
        view.addSubview(spinnerView)
    }
    
    private func setUpContrainsts() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -spacing/2).isActive = true
        
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        spinnerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinnerView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: spacing/2).isActive = true
    }
}
