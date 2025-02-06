import Foundation

struct Post {
    let avatarImage: String
    let name: String
    let image: String
    let description: String
    
    init(avatarImage: String, name: String, image: String, description: String) {
        self.avatarImage = avatarImage
        self.name = name
        self.image = image
        self.description = "\(name): \(description)"
    }
}
