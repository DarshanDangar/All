import UIKit

var greeting = "Hello, playground"
class User {
    var fname: String = ""
    var lname: String = ""
    

}
class Authentication {
    func authentication(username: String) {
        if username == "Darshan@Dangar" {
            print("Authentication Sucessfull")
        }else{
            print("Authentication fail")
        }
    }
}

var user = User()
user.fname = "Darshan"
user.lname = "Dangar"

var checkAuthntic = Authentication()
checkAuthntic.authentication(username: "Darshan@Dangar")
