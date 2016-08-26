//
//  Database.swift
//  Loop
//
//  Created by Matt Hills on 8/24/16.
//  Copyright © 2016 Matthew Hills. All rights reserved.
//

import Foundation
import Firebase

class UsersDatabase {
    // Reference to the Firebase data store.
    private var dbRef : FIRDatabaseReference
    
    // Where all users will be stored.
    private var userIDRef : FIRDatabaseReference
    
    // Empty variables to be populated by the database and referenced by other view controllers.
    var userID = String()
    var firstName = String()
    var lastName = String()
    var currentEmail = String()
    var membershipHistory = String()
    var lifetimeRounds = Int()
    var credit = Int()
    
    init() {
        self.dbRef = FIRDatabase.database().reference()
        
        if let user = FIRAuth.auth()?.currentUser {
            userID = user.uid
            currentEmail = user.email!
        }
        
        // Sets the reference to the user by utilizing the Firebase 'uid' associated with the account to set a path to the correct database node.
        self.userIDRef = self.dbRef.child("users").child("\(userID)")
        getUserInformation()
    }
    
    func getUserInformation() {
        self.userIDRef.observeEventType(FIRDataEventType.Value) {
            (snapshot: FIRDataSnapshot) in
            
            let first_name = snapshot.value?.objectForKey("first_name") as! String
            let last_name = snapshot.value?.objectForKey("last_name") as! String
            //let currentEmail = snapshot.value?.objectForKey("email") as! String
            let membership_history = snapshot.value?.objectForKey("membership_history") as! String
            let lifetime_rounds = snapshot.value?.objectForKey("lifetime_rounds") as! Int
            let credit = snapshot.value?.objectForKey("credit") as! Int
            
            self.firstName = first_name
            self.lastName = last_name
            //self.email = email
            self.membershipHistory = membership_history
            self.lifetimeRounds = lifetime_rounds
            self.credit = credit
        }
    }
    
    func resetPassword(email: String) {
        FIRAuth.auth()?.sendPasswordResetWithEmail(email, completion: { (error) in
            if error == nil {
                
            }
        })
    }
}