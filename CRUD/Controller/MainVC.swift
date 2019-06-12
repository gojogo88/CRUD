//
//  ViewController.swift
//  CRUD
//
//  Created by Jonathan Go on 2019/06/12.
//  Copyright © 2019 Appdelight. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

  @IBOutlet var name: UILabel!
  @IBOutlet var height: UILabel!
  @IBOutlet var mass: UILabel!
  @IBOutlet var hair: UILabel!
  @IBOutlet var birthYear: UILabel!
  @IBOutlet var gender: UILabel!
  
  var person: Person?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    getPerson(PERSON_URL)
    
  }
  
  func getPerson(_ urlString: String) {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    
    decoder.decode(Person.self, fromURL: urlString) { (person) in
      self.person = person
      
      self.setupPersonDetails(person: person)
    }
  }

  func setupPersonDetails(person: Person) {
    name.text = person.name
    height.text = person.height
    mass.text = person.mass
    hair.text = person.hair
    birthYear.text = person.birthyear
    gender.text = person.gender
    
//    if person.homeworldUrl.isEmpty {
//      homeworldBtn.isEnabled = false
//    } else {
//      homeworldBtn.isEnabled = true
//    }
//
//    vehiclesBtn.isEnabled = !person.vehicleUrls.isEmpty
//    starshipsBtn.isEnabled = !person.starshipUrls.isEmpty
//    filmsBtn.isEnabled = !person.filmUrls.isEmpty
    
  }
  
  
  
}

