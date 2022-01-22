//
//  ViewController.swift
//  CovidVariants
//
//  Created by Alumno on 1/21/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return variants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "variants") as! CeldaVariantsController
        celda.lblLineage.text = variants[indexPath.row].lineage
        celda.lblDate.text = variants[indexPath.row].date
        celda.lblDessignated.text = variants[indexPath.row].designated
        celda.lblAssigned.text = variants[indexPath.row].assigned
        celda.lblName.text = variants[indexPath.row].name
        
        return celda
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    @IBOutlet weak var tvVariants: UITableView!
    var variants : [Variants] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        variants.append(Variants(lineage: "A1",date: "1000",designated: "24/11/2021",assigned: "4285",name: "Omicron"))
        variants.append(Variants(lineage: "A1",date: "1000",designated: "24/11/2021",assigned: "4285",name: "Omicron"))
    }


}

