//
//  ProfileViewController.swift
//  Words
//
//  Created by Kin+Carta on 10.1.24.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {
    var userPhoto = "Eltoni"
    var username = "Elton Ruhani"
    var userDescription = "Intern iOS Developer @ Kin + Carta"
    var userLocation = "Pristina, District of Pristina, Kosovo"
    var userConnections = 330
    var userViews = 55
    var userImpresions = 1221
    var userAppearances = 5
    var titleSize: CGFloat = 14
    var subtitleSize: CGFloat = 12
    var aboutDescription = "I just finished High School at SHMLEJ “Hoxhë Kadri Prishtina” in Pristina. I’ve finished an intensive course for iOS Development at “United Pixels”, also I’ve finished another training for iOS Development held in “RIT Kosovo”. Currently appart of Kin+Carta as a iOS Developer Intern in Prishtina"
    var userFollowers = 333
    var postOneText: String = {
        "I'm currently working on creating Wonder Western Balkan app. It will be your ultimate companion for exploring the breathtaking beauty of the Balkan region. Discover hidden gems, historical landmarks, and vibrant cultures with our curated tours. Please note that the app is still under development, utilizing Swift's UIKit for a seamless user experience, and featuring a responsive background to adapt to your device's screen size and color theme. Get ready for an unforgettable adventure!"
    }()
    
    let smallSpace: CGFloat = 12
    let bigSpace: CGFloat = 24
    
    private let scrollView: UIScrollView = {
        let sv = UIScrollView()
        return sv
    }()
    
    private let contentView: UIView = {
        let v = UIView()
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @objc func openTo() {
        print("\(username) is open to work")
    }

}

extension ProfileViewController {
    private func setupUI() {
        self.view.backgroundColor = UIColor(red: 0.91, green: 0.90, blue: 0.87, alpha: 1.00)
        
        // NAV BAR
        let navBar = UIView()
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.backgroundColor = .white
        
        let tabBar = UIView()
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tabBar.backgroundColor = .white
        
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)

        
        view.addSubview(navBar)
        view.addSubview(tabBar)
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: self.view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 100),
            tabBar.heightAnchor.constraint(equalToConstant: 75),
            tabBar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tabBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: navBar.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: tabBar.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
        
        // MARK: - First Section
        let firstSection = UIView()
        firstSection.translatesAutoresizingMaskIntoConstraints = false
        firstSection.backgroundColor = .white
        
        let coverPhoto = UIImageView()
        coverPhoto.translatesAutoresizingMaskIntoConstraints = false
        coverPhoto.contentMode = .scaleAspectFill
        coverPhoto.clipsToBounds = true
        coverPhoto.backgroundColor = .red
        coverPhoto.image = UIImage(named: "cover")
        coverPhoto.layer.masksToBounds = true
        
        let profilePhoto = UIImageView()
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        profilePhoto.layer.cornerRadius = 62.5
        profilePhoto.image = UIImage(named: userPhoto)
        profilePhoto.contentMode = .scaleAspectFill
        profilePhoto.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        profilePhoto.layer.borderWidth = 4
        profilePhoto.layer.masksToBounds = true
        
        let addStory = UIButton()
        addStory.translatesAutoresizingMaskIntoConstraints = false
        addStory.setTitle("+", for: .normal)
        addStory.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        addStory.backgroundColor = UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1))
        addStory.layer.cornerRadius = 15
        addStory.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        addStory.layer.borderWidth = 4
        
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = username
        nameLabel.textColor = .black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = userDescription
        descriptionLabel.textColor = .black
        descriptionLabel.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let locationLabel = UILabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.text = userLocation
        locationLabel.textColor = .darkGray
        locationLabel.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let connectionsLabel = UILabel()
        connectionsLabel.translatesAutoresizingMaskIntoConstraints = false
        connectionsLabel.text = "\(userConnections) connections"
        connectionsLabel.textColor = UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1))
        connectionsLabel.font = UIFont.boldSystemFont(ofSize: 12)
        
        let openToButton = UIButton()
        openToButton.translatesAutoresizingMaskIntoConstraints = false
        openToButton.setTitle("Open to", for: .normal)
        openToButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: subtitleSize)
        openToButton.backgroundColor = UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1))
        openToButton.addTarget(self, action: #selector(openTo), for: .touchUpInside)
        openToButton.setTitleColor(.white, for: .normal)
        openToButton.layer.cornerRadius = 15
        
        let addSectionButton = UIButton()
        addSectionButton.translatesAutoresizingMaskIntoConstraints = false
        addSectionButton.setTitle("Add section", for: .normal)
        addSectionButton.setTitleColor(UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1)), for: .normal)
        addSectionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: subtitleSize)
        addSectionButton.layer.borderColor = CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1)
        addSectionButton.layer.borderWidth = 1.5
        addSectionButton.layer.cornerRadius = 15
        addSectionButton.backgroundColor = .clear
        
        contentView.addSubview(firstSection)
        contentView.addSubview(coverPhoto)
        contentView.addSubview(profilePhoto)
        contentView.addSubview(addStory)
        contentView.addSubview(nameLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(locationLabel)
        contentView.addSubview(connectionsLabel)
        contentView.addSubview(openToButton)
        contentView.addSubview(addSectionButton)
        
        NSLayoutConstraint.activate([
            firstSection.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            firstSection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            firstSection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            
            coverPhoto.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            coverPhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            coverPhoto.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            coverPhoto.widthAnchor.constraint(equalTo: view.widthAnchor),
            coverPhoto.bottomAnchor.constraint(equalTo: profilePhoto.centerYAnchor),
            
            profilePhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            profilePhoto.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 55),
            profilePhoto.widthAnchor.constraint(equalToConstant: 120),
            profilePhoto.heightAnchor.constraint(equalToConstant: 120),
            
            addStory.widthAnchor.constraint(equalToConstant: 30),
            addStory.heightAnchor.constraint(equalToConstant: 30),
            addStory.trailingAnchor.constraint(equalTo: profilePhoto.layoutMarginsGuide.trailingAnchor, constant: 0),
            addStory.bottomAnchor.constraint(equalTo: profilePhoto.layoutMarginsGuide.bottomAnchor, constant: 0),
            
            nameLabel.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: 24),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: smallSpace),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: smallSpace),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: smallSpace),
            
            locationLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: bigSpace),
            locationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            locationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: smallSpace),
            
            connectionsLabel.topAnchor.constraint(equalTo: locationLabel.layoutMarginsGuide.bottomAnchor, constant: smallSpace),
            connectionsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            
            openToButton.topAnchor.constraint(equalTo: connectionsLabel.layoutMarginsGuide.bottomAnchor, constant: smallSpace),
            openToButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            openToButton.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.centerXAnchor, constant: -6),
            openToButton.heightAnchor.constraint(equalToConstant: 30),
            
            addSectionButton.topAnchor.constraint(equalTo: connectionsLabel.layoutMarginsGuide.bottomAnchor, constant: smallSpace),
            addSectionButton.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: smallSpace),
            addSectionButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -smallSpace),
            addSectionButton.heightAnchor.constraint(equalToConstant: 30),
            
            firstSection.bottomAnchor.constraint(equalTo: addSectionButton.bottomAnchor, constant: bigSpace),
            
        ])
        
        // MARK: - Analytics
        let secondSection = UIView()
        secondSection.translatesAutoresizingMaskIntoConstraints = false
        secondSection.backgroundColor = .white
        
        let analytics = UILabel()
        analytics.translatesAutoresizingMaskIntoConstraints = false
        analytics.text = "Analytics"
        analytics.font = UIFont.boldSystemFont(ofSize: 16)
        analytics.textColor = .black
        
        let peopleIcon = UIImageView()
        peopleIcon.translatesAutoresizingMaskIntoConstraints = false
        peopleIcon.image = UIImage(named: "peopleIcon")
        
        let profileViews = UILabel()
        profileViews.translatesAutoresizingMaskIntoConstraints = false
        profileViews.text = "\(userViews) profile views"
        profileViews.textColor = .black
        profileViews.font = UIFont.boldSystemFont(ofSize: titleSize)
        
        let discoverLabel = UILabel()
        discoverLabel.translatesAutoresizingMaskIntoConstraints = false
        discoverLabel.text = "Discover who's viewed your profile."
        discoverLabel.textColor = .black
        discoverLabel.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let impressions = UIImageView()
        impressions.translatesAutoresizingMaskIntoConstraints = false
        impressions.image = UIImage(named: "impressionsIcon")
        
        let profileImpresions = UILabel()
        profileImpresions.translatesAutoresizingMaskIntoConstraints = false
        profileImpresions.text = "\(userImpresions) post impressions"
        profileImpresions.textColor = .black
        profileImpresions.font = UIFont.boldSystemFont(ofSize: titleSize)
        
        let checkImpresions = UILabel()
        checkImpresions.translatesAutoresizingMaskIntoConstraints = false
        checkImpresions.text = "Check out who's engaging with your posts."
        checkImpresions.textColor = .black
        checkImpresions.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let appearances = UIImageView()
        appearances.translatesAutoresizingMaskIntoConstraints = false
        appearances.image = UIImage(named: "appearanceIcon")
        
        let profileAppearances = UILabel()
        profileAppearances.translatesAutoresizingMaskIntoConstraints = false
        profileAppearances.text = "\(userAppearances) search appearances"
        profileAppearances.textColor = .black
        profileAppearances.font = UIFont.boldSystemFont(ofSize: titleSize)
        
        let checkAppearance = UILabel()
        checkAppearance.translatesAutoresizingMaskIntoConstraints = false
        checkAppearance.text = "Check out who's engaging with your posts."
        checkAppearance.textColor = .black
        checkAppearance.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let showAllAnalytics = UIButton()
        showAllAnalytics.translatesAutoresizingMaskIntoConstraints = false
        showAllAnalytics.setTitleColor(.darkGray, for: .normal)
        showAllAnalytics.titleLabel?.font = UIFont.systemFont(ofSize: titleSize)
        showAllAnalytics.setTitle("Show all analytics", for: .normal)
        
        // SECOND SECTION
        contentView.addSubview(secondSection)
        secondSection.addSubview(analytics)
        secondSection.addSubview(peopleIcon)
        secondSection.addSubview(profileViews)
        secondSection.addSubview(discoverLabel)
        secondSection.addSubview(impressions)
        secondSection.addSubview(profileImpresions)
        secondSection.addSubview(checkImpresions)
        secondSection.addSubview(showAllAnalytics)
        secondSection.addSubview(appearances)
        secondSection.addSubview(profileAppearances)
        secondSection.addSubview(checkAppearance)
        
        NSLayoutConstraint.activate([
            // MARK: - SECOND SECTION
            secondSection.topAnchor.constraint(equalTo: firstSection.layoutMarginsGuide.bottomAnchor, constant: bigSpace),
            secondSection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            secondSection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            secondSection.bottomAnchor.constraint(equalTo: showAllAnalytics.bottomAnchor, constant: smallSpace),
            
            analytics.topAnchor.constraint(equalTo: secondSection.topAnchor, constant: smallSpace),
            analytics.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),

            peopleIcon.topAnchor.constraint(equalTo: analytics.bottomAnchor, constant: smallSpace),
            peopleIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            peopleIcon.widthAnchor.constraint(equalToConstant: 30),
            peopleIcon.heightAnchor.constraint(equalToConstant: 30),
            
            profileViews.topAnchor.constraint(equalTo: analytics.bottomAnchor, constant: smallSpace),
            profileViews.leadingAnchor.constraint(equalTo: peopleIcon.trailingAnchor, constant: 6),
            
            discoverLabel.topAnchor.constraint(equalTo: profileViews.bottomAnchor, constant: 2),
            discoverLabel.leadingAnchor.constraint(equalTo: profileViews.leadingAnchor),
            
            impressions.topAnchor.constraint(equalTo: peopleIcon.bottomAnchor, constant: smallSpace),
            impressions.leadingAnchor.constraint(equalTo: peopleIcon.leadingAnchor),
            impressions.widthAnchor.constraint(equalToConstant: 30),
            impressions.heightAnchor.constraint(equalToConstant: 30),
            
            profileImpresions.topAnchor.constraint(equalTo: discoverLabel.bottomAnchor, constant: smallSpace),
            profileImpresions.leadingAnchor.constraint(equalTo: impressions.trailingAnchor, constant: 6),
            
            checkImpresions.topAnchor.constraint(equalTo: profileImpresions.bottomAnchor, constant: 2),
            checkImpresions.leadingAnchor.constraint(equalTo: profileImpresions.leadingAnchor),
            
            appearances.topAnchor.constraint(equalTo: impressions.bottomAnchor, constant: smallSpace),
            appearances.leadingAnchor.constraint(equalTo: impressions.leadingAnchor),
            appearances.widthAnchor.constraint(equalToConstant: 30),
            appearances.heightAnchor.constraint(equalToConstant: 30),
            
            profileAppearances.leadingAnchor.constraint(equalTo: appearances.trailingAnchor, constant: 6),
            profileAppearances.topAnchor.constraint(equalTo: appearances.topAnchor),
            
            checkAppearance.leadingAnchor.constraint(equalTo: profileAppearances.leadingAnchor),
            checkAppearance.topAnchor.constraint(equalTo: profileAppearances.bottomAnchor),
            
            showAllAnalytics.topAnchor.constraint(equalTo: checkAppearance.bottomAnchor, constant: bigSpace),
            showAllAnalytics.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
        
        // MARK: - RESOURCES
        let resourcesSection = UIView()
        resourcesSection.translatesAutoresizingMaskIntoConstraints = false
        resourcesSection.backgroundColor = .white
        
        let resourcesTitle = UILabel()
        resourcesTitle.translatesAutoresizingMaskIntoConstraints = false
        resourcesTitle.text = "Resources"
        resourcesTitle.textColor = .black
        resourcesTitle.font = UIFont.boldSystemFont(ofSize: 16)
        
        // Sub-section: Creator Mode
        let creatorModeIcon = UIImageView()
        creatorModeIcon.translatesAutoresizingMaskIntoConstraints = false
        creatorModeIcon.image = UIImage(named: "creatorModeIcon")
        
        let creatorModeTitle = UILabel()
        creatorModeTitle.translatesAutoresizingMaskIntoConstraints = false
        creatorModeTitle.text = "Creator mode OFF"
        creatorModeTitle.textColor = .black
        creatorModeTitle.font = UIFont.boldSystemFont(ofSize: titleSize)
        
        let creatorModeSubtitle = UILabel()
        creatorModeSubtitle.translatesAutoresizingMaskIntoConstraints = false
        creatorModeSubtitle.text = "Get discovered, showcase content on your profile, and get access to creator tools."
        creatorModeSubtitle.numberOfLines = 2
        creatorModeSubtitle.textColor = .black
        creatorModeSubtitle.font = UIFont.systemFont(ofSize: subtitleSize)
        
        // Sub-section: Network
        let myNetworkIcon = UIImageView()
        myNetworkIcon.translatesAutoresizingMaskIntoConstraints = false
        myNetworkIcon.image = UIImage(named: "peopleIcon")
        
        let myNetworkTitle = UILabel()
        myNetworkTitle.translatesAutoresizingMaskIntoConstraints = false
        myNetworkTitle.text = "My network"
        myNetworkTitle.textColor = .black
        myNetworkTitle.font = UIFont.boldSystemFont(ofSize: titleSize)
        
        let myNetworkSubtitle = UILabel()
        myNetworkSubtitle.translatesAutoresizingMaskIntoConstraints = false
        myNetworkSubtitle.text = "See and manage your connections and interests."
        myNetworkSubtitle.numberOfLines = 2
        myNetworkSubtitle.textColor = .black
        myNetworkSubtitle.font = UIFont.systemFont(ofSize: subtitleSize)
        
        let showResources = UIButton()
        showResources.translatesAutoresizingMaskIntoConstraints = false
        showResources.titleLabel?.font = UIFont.systemFont(ofSize: titleSize)
        showResources.setTitleColor(.darkGray, for: .normal)
        showResources.setTitle("Show all 5 resources", for: .normal)
        
        contentView.addSubview(resourcesSection)
        resourcesSection.addSubview(resourcesTitle)
        resourcesSection.addSubview(creatorModeIcon)
        resourcesSection.addSubview(creatorModeTitle)
        resourcesSection.addSubview(creatorModeSubtitle)
        resourcesSection.addSubview(myNetworkIcon)
        resourcesSection.addSubview(myNetworkTitle)
        resourcesSection.addSubview(myNetworkSubtitle)
        resourcesSection.addSubview(showResources)

        NSLayoutConstraint.activate([
            resourcesSection.topAnchor.constraint(equalTo: secondSection.bottomAnchor, constant: 12),
            resourcesSection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            resourcesSection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            resourcesSection.bottomAnchor.constraint(equalTo: showResources.bottomAnchor, constant: 24),
            
            resourcesTitle.topAnchor.constraint(equalTo: resourcesSection.topAnchor, constant: 12),
            resourcesTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            creatorModeIcon.topAnchor.constraint(equalTo: resourcesTitle.bottomAnchor, constant: 12),
            creatorModeIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            creatorModeIcon.widthAnchor.constraint(equalToConstant: 30),
            creatorModeIcon.heightAnchor.constraint(equalToConstant: 30),
            
            creatorModeTitle.topAnchor.constraint(equalTo: creatorModeIcon.topAnchor),
            creatorModeTitle.leadingAnchor.constraint(equalTo: creatorModeIcon.trailingAnchor, constant: 12),
            creatorModeTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 12),
            
            creatorModeSubtitle.topAnchor.constraint(equalTo: creatorModeTitle.bottomAnchor, constant: 2),
            creatorModeSubtitle.leadingAnchor.constraint(equalTo: creatorModeTitle.leadingAnchor),
            creatorModeSubtitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            myNetworkIcon.topAnchor.constraint(equalTo: creatorModeSubtitle.bottomAnchor, constant: 12),
            myNetworkIcon.leadingAnchor.constraint(equalTo: creatorModeIcon.leadingAnchor),
            myNetworkIcon.widthAnchor.constraint(equalToConstant: 30),
            myNetworkIcon.heightAnchor.constraint(equalToConstant: 30),
            
            myNetworkTitle.leadingAnchor.constraint(equalTo: myNetworkIcon.trailingAnchor, constant: 12),
            myNetworkTitle.topAnchor.constraint(equalTo: myNetworkIcon.topAnchor),
            myNetworkTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            myNetworkSubtitle.topAnchor.constraint(equalTo: myNetworkTitle.bottomAnchor, constant: 2),
            myNetworkSubtitle.leadingAnchor.constraint(equalTo: myNetworkTitle.leadingAnchor),
            myNetworkSubtitle.trailingAnchor.constraint(equalTo: myNetworkTitle.trailingAnchor),
            
            showResources.topAnchor.constraint(equalTo: myNetworkSubtitle.bottomAnchor, constant: 24),
            showResources.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
        
        // MARK: - ABOUT
        let aboutSection = UIView()
        aboutSection.translatesAutoresizingMaskIntoConstraints = false
        aboutSection.backgroundColor = .white
        
        let aboutTitle = UILabel()
        aboutTitle.translatesAutoresizingMaskIntoConstraints = false
        aboutTitle.text = "About"
        aboutTitle.font = UIFont.boldSystemFont(ofSize: 16)
        
        let bioLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = aboutDescription
            label.numberOfLines = 4
            label.font = UIFont.systemFont(ofSize: subtitleSize)
            
            return label
        }()
        
        contentView.addSubview(aboutSection)
        aboutSection.addSubview(aboutTitle)
        aboutSection.addSubview(bioLabel)
        
        NSLayoutConstraint.activate([
            aboutSection.topAnchor.constraint(equalTo: resourcesSection.bottomAnchor, constant: smallSpace),
            aboutSection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            aboutSection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            aboutSection.bottomAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: bigSpace),
            
            aboutTitle.topAnchor.constraint(equalTo: aboutSection.topAnchor, constant: smallSpace),
            aboutTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            aboutTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -smallSpace),
            
            bioLabel.topAnchor.constraint(equalTo: aboutTitle.bottomAnchor, constant: bigSpace),
            bioLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: smallSpace),
            bioLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -smallSpace),
            
            
        ])
        
        // MARK: - Activity Section
        let activitySection: UIView = {
            let section = UIView()
            section.translatesAutoresizingMaskIntoConstraints = false
            section.backgroundColor = .white
            
            let title: UILabel = {
                let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
                label.text = "Activity"
                label.font = UIFont.boldSystemFont(ofSize: titleSize)
                return label
            }()
            
            let createPost: UIButton = {
                let button = UIButton()
                button.layer.cornerRadius = 15
                button.translatesAutoresizingMaskIntoConstraints = false
                button.setTitle("Create a post", for: .normal)
                button.setTitleColor(UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1)), for: .normal)
                button.titleLabel?.font = UIFont.systemFont(ofSize: subtitleSize)
                button.layer.borderColor = CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1)
                button.layer.borderWidth = 1
                button.backgroundColor = .white
                return button
            }()
            
            let followersCount: UILabel = {
                let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
                label.text = "\(userFollowers) followers"
                label.textColor = UIColor(cgColor: CGColor(red: 0.04, green: 0.4, blue: 0.76, alpha: 1))
                label.font = UIFont.systemFont(ofSize: subtitleSize)
                return label
            }()
            
            let postOne: UIView = {
                let post = UIView()
                post.translatesAutoresizingMaskIntoConstraints = false
                post.backgroundColor = .red
                return post
            }()
            
            let postedBy: UILabel = {
                let usernameLabel = UILabel()
                usernameLabel.translatesAutoresizingMaskIntoConstraints = false
                usernameLabel.text = username
                usernameLabel.font = UIFont.boldSystemFont(ofSize: subtitleSize)
                
                return usernameLabel
                
            }()
            
            let postImage: UIImageView = {
                let img = UIImageView()
                img.translatesAutoresizingMaskIntoConstraints = false
                img.image = UIImage(named: "Eltoni")
                img.contentMode = .scaleToFill
                img.layer.cornerRadius = 5
                
                
                return img
            }()
            
            let postText: UILabel = {
                let postText = UILabel()
                postText.translatesAutoresizingMaskIntoConstraints = false
                postText.numberOfLines = 3
                postText.text = postOneText
                postText.font = UIFont.systemFont(ofSize: subtitleSize)
                
                return postText
            }()
            
            let likeCountLabel: UILabel = {
                let likeCount = UILabel()
                likeCount.translatesAutoresizingMaskIntoConstraints = false
                likeCount.text = "123 Likes"
                likeCount.font = UIFont.systemFont(ofSize: subtitleSize)
                return likeCount
            }()
            
            [title, createPost, followersCount, postOne, postImage, postedBy, postText, likeCountLabel].forEach { section.addSubview($0) }
            
            NSLayoutConstraint.activate([
                title.topAnchor.constraint(equalTo: section.topAnchor, constant: smallSpace),
                title.leadingAnchor.constraint(equalTo: section.leadingAnchor, constant: smallSpace),
                title.trailingAnchor.constraint(equalTo: section.trailingAnchor, constant: -smallSpace),
                
                createPost.trailingAnchor.constraint(equalTo: section.trailingAnchor, constant: -smallSpace),
                createPost.topAnchor.constraint(equalTo: title.topAnchor),
                createPost.widthAnchor.constraint(equalTo: createPost.heightAnchor, multiplier: 3),
                createPost.heightAnchor.constraint(equalToConstant: 30),
                
                followersCount.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5),
                followersCount.leadingAnchor.constraint(equalTo: title.leadingAnchor),
                
                postedBy.topAnchor.constraint(equalTo: followersCount.bottomAnchor, constant: bigSpace),
                postedBy.leadingAnchor.constraint(equalTo: followersCount.leadingAnchor),
                postedBy.trailingAnchor.constraint(equalTo: createPost.trailingAnchor),
                
                postImage.heightAnchor.constraint(equalToConstant: 60),
                postImage.widthAnchor.constraint(equalTo: postImage.heightAnchor),
                postImage.topAnchor.constraint(equalTo: postedBy.bottomAnchor, constant: smallSpace),
                postImage.leadingAnchor.constraint(equalTo: postedBy.leadingAnchor),
                
                postText.leadingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: smallSpace),
                postText.trailingAnchor.constraint(equalTo: postedBy.trailingAnchor),
                postText.topAnchor.constraint(equalTo: postImage.topAnchor),
                postText.bottomAnchor.constraint(equalTo: postImage.bottomAnchor),
                
                likeCountLabel.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: smallSpace),
                likeCountLabel.leadingAnchor.constraint(equalTo: postImage.leadingAnchor),
                likeCountLabel.trailingAnchor.constraint(equalTo: postedBy.trailingAnchor),
                
                section.bottomAnchor.constraint(equalTo: likeCountLabel.bottomAnchor, constant: bigSpace),
                
                
            ])
            
            return section
        }()

        // Usage
        contentView.addSubview(activitySection)

        // Additional constraints if needed
        NSLayoutConstraint.activate([
            activitySection.topAnchor.constraint(equalTo: aboutSection.bottomAnchor, constant: smallSpace),
            activitySection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            activitySection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: activitySection.bottomAnchor, constant: bigSpace),
        ])
        
        
    }
    
    
}

#Preview {
    return ProfileViewController()
}


