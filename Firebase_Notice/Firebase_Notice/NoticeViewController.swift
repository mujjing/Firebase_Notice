//
//  NoticeViewController.swift
//  Firebase_Notice
//
//  Created by 전지훈 on 2021/11/23.
//

import UIKit

class NoticeViewController: UIViewController {
    
    var noticeContents: (title: String, detail: String, date: String)?

    @IBOutlet weak var noticeView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        noticeView.layer.cornerRadius = 6
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        guard let noticContents = noticeContents else {return}
        
        titleLabel.text = noticContents.title
        detailLabel.text = noticContents.detail
        dateLabel.text = noticContents.date
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        exit(0)
    }
    
}
