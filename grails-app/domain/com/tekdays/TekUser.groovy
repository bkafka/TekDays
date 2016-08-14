package com.tekdays


class TekUser {

    String fullName
    String userName
    String password
    String email
    String website
    String bio

    static constraints = {
        fullName(nullable: false)
        userName(nullable: true)
        password(nullable: true)
        email(nullable: true)
        website(nullable: true)
        bio(nullable: true, maxSize:5000)
    }
    String toString() { fullName }
}
