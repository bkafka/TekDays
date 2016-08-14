package com.tekdays

class TekEvent {
 String city
 String name
 TekUser organizer
 String venue
 Date startDate
 Date endDate
 String description

 static hasMany = [volunteers : TekUser,
                   respondents : String,
                   sponsorships : Sponsorship,
                   messages: TekMessage,
                   tasks: Task]


 static constraints = {
  name()
  name blank : false
  city()
//  description maxSize: 5000
  description maxSize: 50
  organizer()
  venue()
  startDate()
  endDate()
  volunteers nullable: true
  sponsorships nullable: true
  tasks nullable: true
  messages nullable: true
 }

 String toString(){
  "$name, $city"
 }

}

