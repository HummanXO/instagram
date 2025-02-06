import UIKit

class FeedViewController: UIViewController {
    
    private var tableView: UITableView!
    private var identifier = "cell"
    
    var posts: [Post] = [
        Post(avatarImage: "ronaldo_avatar", name: "cristiano", image: "ronaldo_post", description: "Merry Christmas, everyone! 🎄"),
        Post(avatarImage: "ronaldo_avatar", name: "cristiano", image: "ronaldo_post", description: "Merry Christmas, everyone! 🎄")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        createTableView()
    }
    
    private func setupNavigationBar() {
        let logoImageView = UIImageView(image: UIImage(named: "logo"))
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.tintColor = .white

        let dmLogoImageView = UIImageView(image: UIImage(named: "dmlogo"))
        dmLogoImageView.contentMode = .scaleAspectFit
        dmLogoImageView.tintColor = .white

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logoImageView)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: dmLogoImageView)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func createTableView() {
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .black
        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: identifier)
        
        view.addSubview(tableView)
    }
    
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? FeedTableViewCell else {
            fatalError("Could not dequeue cell")
        }
        let model = posts[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
}
