//
//  ViewController.swift
//  facebook
//
//  Created by Dinsaren on 12/4/18.
//  Copyright © 2018 Dinsaren. All rights reserved.
//

import UIKit
class PostModel{
    var description:String?
    var image:UIImage?
    init(description:String?,image:UIImage?) {
        self.description=description
        self.image=image
    }
}
class ViewController: UIViewController {
    var postModel:Array = [PostModel]()
    override func viewDidLoad() {
        postModel = [PostModel(description: "I Am Studying..",image:nil),
                     PostModel(description: "I am studying infomation Technology Fiction-writing also has modes: action, exposition, description, dialogue, summary, and transition.[4] Author Peter Selgin refers to methods, including action, dialogue, thoughts, summary, scenes, and description.[5] Currently, there is no consensus within the writing community regarding the number and composition of fiction-writing",image:nil),
                    PostModel(description: "I am studying infomation Technology Fiction-writing",image:#imageLiteral(resourceName: "girl")),
                     PostModel(description: "I am studying infomation Technology Fiction-writing",image:#imageLiteral(resourceName: "girl")),
                     PostModel(description: "សំរាក់ហើយអ្នកទាំងអស់គ្នា",image: nil)
        ]
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if postModel[indexPath.row].image != nil{
             let cell = Bundle.main.loadNibNamed("ThreePostTableViewCell", owner: self, options: nil)?.first as! ThreePostTableViewCell
            cell.imagePost.image=postModel[indexPath.row].image
            cell.descriptionLabel.text=postModel[indexPath.row].description
            if cell.descriptionLabel.numberOfVisibleLines > 1{
                cell.descriptionLabel.font = cell.descriptionLabel.font.withSize(16)
            }else{
                cell.descriptionLabel.font = cell.descriptionLabel.font.withSize(20)
            }
           return cell
        }else{
            let cell = Bundle.main.loadNibNamed("FirstPostTableViewCell", owner: self, options: nil)?.first as!  FirstPostTableViewCell
             cell.descripitonTextLabel.text = postModel[indexPath.row].description
            if cell.descripitonTextLabel.numberOfVisibleLines > 1{
                cell.descripitonTextLabel.font = cell.descripitonTextLabel.font.withSize(16)
            }else{
                cell.descripitonTextLabel.font = cell.descripitonTextLabel.font.withSize(20)
            }
            return cell
        }
        
        
    }
    
    
}
extension UILabel {
    var numberOfVisibleLines: Int {
        let textSize = CGSize(width: CGFloat(self.frame.size.width), height: CGFloat(MAXFLOAT))
        let rHeight: Int = lroundf(Float(self.sizeThatFits(textSize).height))
        let charSize: Int = lroundf(Float(self.font.pointSize))
        return rHeight / charSize
    }
}
