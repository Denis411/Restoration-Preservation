//
//  AppDelegate.swift
//  Restoration
//
//  Created by Dennis Loskutov on 06.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, shouldSaveSecureApplicationState coder: NSCoder) -> Bool {
        true
    }

    func application(_ application: UIApplication, shouldRestoreSecureApplicationState coder: NSCoder) -> Bool {
        true
    }

    func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder) {
        UIApplication.shared.extendStateRestoration()
        DispatchQueue.main.async {
            UIApplication.shared.completeStateRestoration()
        }
    }
}
