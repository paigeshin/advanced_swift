import Foundation

// In-Out Parameters

struct User {
    var userId: Int? 
    let name: String 
}

func saveAndReturnUser(_ user: User) -> User {
    var copyUser = user 
    copyUser.userId = 100 
    return copyUser
}

var user = User(name: "Paige Shin")
user = saveAndReturnUser(user)


// using `inout`
func saveUser(_ user: inout User) {
    user.userId = 100 
}
saveUser(&user)