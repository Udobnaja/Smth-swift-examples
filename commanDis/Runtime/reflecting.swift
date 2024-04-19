import Foundation

protocol Resettable {
    func reset()
}

protocol CredentialsStorage: Resettable {}

protocol FavoritesStorage: Resettable {}

protocol SettingsStorage: Resettable {}

class UserSession {
    let credentials: CredentialsStorage
    let favorites: FavoritesStorage
    let settings: SettingsStorage

    let name = "Eva"


    init(
        credentials: CredentialsStorage,
        favorites: FavoritesStorage,
        settings: SettingsStorage
    ) {
        self.credentials = credentials
        self.favorites = favorites
        self.settings = settings
    }

    func showMirror() {
//        let mirror = Mirror(reflecting: self)
//
//        for child in mirror.children {
//            print("Property name:", child.label)
//            print("Property value:", child.value)
//        }

        let mirror = Mirror(reflecting: self)
        
        for child in mirror.children {
            if let resettable = child.value as? Resettable {
                resettable.reset()
            }
        }
    }
}

extension UserSession {
    func logOut() {
        credentials.reset()
        favorites.reset()
        settings.reset()
    }
}

class CredentialsStorageImpl: CredentialsStorage {
    func reset() {
        print("CredentialsStorageImp")
    }
}

class FavoritesStorageImpl: FavoritesStorage {
  func reset() {
      print("FavoritesStorageImp")
  }
}

class SettingsStorageImpl: SettingsStorage {
  func reset() {
      print("SettingsStorageImp")
  }
}

func reflecting() {
    let url = UserSession(
        credentials: CredentialsStorageImpl(),
        favorites: FavoritesStorageImpl(),
        settings: SettingsStorageImpl()
    )

    url.showMirror()
}














