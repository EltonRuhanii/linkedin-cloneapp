import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    var userPhoto = "Eltoni"
    var username = "Elton Ruhani"
    var userDescription = "Intern iOS Developer @ Kin + Carta"
    var userLocation = "Pristina, District of Pristina, Kosovo"
    var userConnections = 330
    var userViews = 55
    var userImpressions = 1221
    var userAppearances = 5
    var titleSize: CGFloat = 14
    var subtitleSize: CGFloat = 12
    var aboutDescription = "I just finished High School at SHMLEJ “Hoxhë Kadri Prishtina” in Pristina. I’ve finished an intensive course for iOS Development at “United Pixels”, also I’ve finished another training for iOS Development held in “RIT Kosovo”. Currently part of Kin+Carta as an iOS Developer Intern in Prishtina"
    var userFollowers = 333
    
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
    
    private var aboutSection: UIView!
    private var activitySection: UIView!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        view.backgroundColor = UIColor(red: 0.91, green: 0.90, blue: 0.87, alpha: 1.00)
        setupNavigationBar()
        setupTabBar()
        setupScrollView()
        setupFirstSection()
        setupAnalyticsSection()
        setupResourcesSection()
        setupAboutSection()
        setupActivitySection()
    }

    // MARK: - Private UI Setup Methods
    private func setupNavigationBar() {
        let navBar = UIView()
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.backgroundColor = .white
        view.addSubview(navBar)
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 100)
        ])
        // Add any other elements specific to the navigation bar
    }
    
    private func setupTabBar() {
        let tabBar = UIView()
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tabBar.backgroundColor = .white
        view.addSubview(tabBar)
        NSLayoutConstraint.activate([
            tabBar.heightAnchor.constraint(equalToConstant: 75),
            tabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        // Add any other elements specific to the tab bar
    }
    
    private func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func setupFirstSection() {
        let firstSection = UIView()
        firstSection.translatesAutoresizingMaskIntoConstraints = false
        firstSection.backgroundColor = .white
        contentView.addSubview(firstSection)
        
        // Add subviews and constraints for the first section
        // ...
    }

    private func setupAnalyticsSection() {
        let secondSection = UIView()
        secondSection.translatesAutoresizingMaskIntoConstraints = false
        secondSection.backgroundColor = .white
        contentView.addSubview(secondSection)
        
        // Add subviews and constraints for the second section
        // ...
    }

    private func setupResourcesSection() {
        let resourcesSection = UIView()
        resourcesSection.translatesAutoresizingMaskIntoConstraints = false
        resourcesSection.backgroundColor = .white
        contentView.addSubview(resourcesSection)
        
        // Add subviews and constraints for the resources section
        // ...
    }
    
    
    private func setupAboutSection() {
        let aboutSection = UIView()
        aboutSection.translatesAutoresizingMaskIntoConstraints = false
        aboutSection.backgroundColor = .white
        contentView.addSubview(aboutSection)
        
        // Add subviews and constraints for the about section
        // ...
    }
    
    private func setupActivitySection() {
            activitySection = createActivitySection()
            contentView.addSubview(activitySection)
            NSLayoutConstraint.activate([
//                activitySection.topAnchor.constraint(equalTo: aboutSection.bottomAnchor, constant: smallSpace),
                activitySection.topAnchor.constraint(equalTo: aboutSection.bottomAnchor, constant: smallSpace),
                activitySection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                activitySection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: activitySection.bottomAnchor, constant: bigSpace),
            ])
        }

        private func createActivitySection() -> UIView {
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
                button.titleLabel?.font = UIFont.systemFont(ofSize: titleSize)
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

            [title, createPost, followersCount].forEach { section.addSubview($0) }

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
                section.bottomAnchor.constraint(equalTo: followersCount.bottomAnchor, constant: smallSpace),
            ])
            return section
        }
    }
