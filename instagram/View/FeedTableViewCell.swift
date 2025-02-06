import UIKit

class FeedTableViewCell: UITableViewCell {

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with model: Post) {
        avatarImageView.image = UIImage(named: model.avatarImage)
        nameLabel.text = model.name
        postImageView.image = UIImage(named: model.image)
        discriptionLabel.text = model.description
    }
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    let moreOptionsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "chat"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "arrowtriangle.up.circle"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "bookmark"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let likedCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textColor = .gray
        label.text = "Нравится: 192"
        return label
    }()
    
    let discriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .white
        return label
    }()
    
    let seeComentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .gray
        label.text = "Посмотреть комментарии"
        return label
    }()
    
    let myAvatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let addCommentTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.placeholder = "Добавить комментарий..."
        return textField
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.text = "4 минуты назад"
        label.textColor = .gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupUI() {
        [avatarImageView, nameLabel, moreOptionsButton, postImageView, likeButton, commentButton, shareButton, saveButton, likedCountLabel, discriptionLabel, seeComentLabel, myAvatarImageView, addCommentTextField, timeLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        contentView.backgroundColor = .black

        NSLayoutConstraint.activate([
            
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            avatarImageView.widthAnchor.constraint(equalToConstant: 40),
            avatarImageView.heightAnchor.constraint(equalToConstant: 40),

            nameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),

            moreOptionsButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            moreOptionsButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            postImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10),
            postImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            postImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            postImageView.heightAnchor.constraint(equalTo: postImageView.widthAnchor),
            
            likeButton.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 10),
            likeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            commentButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor),
            commentButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor, constant: 10),
            
            shareButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor),
            shareButton.leadingAnchor.constraint(equalTo: commentButton.trailingAnchor, constant: 10),
            
            saveButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor),
            saveButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            likedCountLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 5),
            likedCountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            discriptionLabel.topAnchor.constraint(equalTo: likedCountLabel.bottomAnchor, constant: 5),
            discriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            discriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            seeComentLabel.topAnchor.constraint(equalTo: discriptionLabel.bottomAnchor, constant: 5),
            seeComentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            myAvatarImageView.topAnchor.constraint(equalTo: seeComentLabel.bottomAnchor, constant: 10),
            myAvatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            myAvatarImageView.widthAnchor.constraint(equalToConstant: 30),
            myAvatarImageView.heightAnchor.constraint(equalToConstant: 30),
            
            addCommentTextField.centerYAnchor.constraint(equalTo: myAvatarImageView.centerYAnchor),
            addCommentTextField.leadingAnchor.constraint(equalTo: myAvatarImageView.trailingAnchor, constant: 10),
            addCommentTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            timeLabel.topAnchor.constraint(equalTo: myAvatarImageView.bottomAnchor, constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            timeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    
    
}

