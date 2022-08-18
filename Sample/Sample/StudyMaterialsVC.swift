    //
    //  StudyMaterialsVC.swift
    //  Sample
    //
    //  Created by Anwesh M on 18/08/22.
    //

import UIKit

class StudyMaterialsVC: UIViewController{
    
    @IBOutlet weak var backButtonImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var createMaterialButton: UIButton!
    
    private var studyMaterials: [StudyMaterialInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        loadData()
        setupCreateMaterialButton()
        setupBackButton()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    private func setupBackButton(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onBackButtonClick))
        backButtonImageView.addGestureRecognizer(tapGesture)
        backButtonImageView.isUserInteractionEnabled = true
    }
    
    @objc private func onBackButtonClick(){
        self.navigationController?.popViewController(animated: true)
    }
    
    private func setupCreateMaterialButton(){
        createMaterialButton.setAllSideShadow(shadowShowSize: 1)
        createMaterialButton.layer.cornerRadius = 25
        createMaterialButton.clipsToBounds  = true
    }
    
    private func loadData(){
        let sm1 = StudyMaterialInfo(subject: "Social studies notes", chapter: "geography", date: "Jul 7, 2022")
        let sm2 = StudyMaterialInfo(subject: "Science notes", chapter: "biology", date: "Jul 7, 2022")
        let sm3 = StudyMaterialInfo(subject: "Maths notes", chapter: "Algebra", date: "Jul 7, 2022")
        let sm4 = StudyMaterialInfo(subject: "English notes", chapter: "verbs(basics)", date: "Jul 7, 2022")
        
        studyMaterials.append(contentsOf: [sm1, sm2, sm3, sm4])
        tableView.reloadData()
    }
    
    private func setupTableView(){
        tableView.register(UINib(nibName: "SMTableViewCell", bundle: nil), forCellReuseIdentifier: "SMTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}

extension StudyMaterialsVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studyMaterials.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SMTableViewCell", for: indexPath) as! SMTableViewCell
        
        cell.subjectLabel.text = studyMaterials[indexPath.row].subject
        cell.chapterLabel.text = studyMaterials[indexPath.row].chapter
        cell.dateLabel.text = studyMaterials[indexPath.row].date
        return cell
    }
    
    
}



struct StudyMaterialInfo{
    let  subject, chapter, date: String
}
