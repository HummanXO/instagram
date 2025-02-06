//
//  SceneDelegate.swift
//  instagram
//
//  Created by Alexandr on 2/6/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let tabbarController = UITabBarController()
        
        let feedVC = UINavigationController(rootViewController: FeedViewController())
        feedVC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass.circle"))
        
        let reelsVC = UINavigationController(rootViewController: ReelsViewController())
        reelsVC.tabBarItem = UITabBarItem(title: "Reels", image: UIImage(systemName: "video"), selectedImage: UIImage(systemName: "video.fill"))
        
        let notificationVC = UINavigationController(rootViewController: NotificationsViewController())
        notificationVC.tabBarItem = UITabBarItem(title: "Notifications", image: UIImage(systemName: "bell"), selectedImage: UIImage(systemName: "bell.fill"))
        
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))

        tabbarController.setViewControllers([feedVC, searchVC, reelsVC, notificationVC, profileVC], animated: true)
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = .black
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = .white
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = .white
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        tabbarController.tabBar.standardAppearance = tabBarAppearance
        tabbarController.tabBar.scrollEdgeAppearance = tabBarAppearance
        
        window?.rootViewController = tabbarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

