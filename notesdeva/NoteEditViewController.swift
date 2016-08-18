//
//  NoteEditViewController.swift
//  notesdeva
//
//  Created by codecamp on 8/18/16.
//  Copyright © 2016 codecamp. All rights reserved.
//

import UIKit

class NoteEditViewController: UIViewController {
    var note: Note
    
    @IBOutlet weak var titleTextField: UITextField!
    init(note: Note){
        self.note = note
        
        super.init(nibName: nil, bundle: nil)
    }
    @IBOutlet weak var messageTextView: UITextView!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(dismiss))
        
        titleTextField.text = note.title
        messageTextView.text = note.message
    }
    
    func dismiss() {
        note.title = titleTextField.text
        note.message = messageTextView.text
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

   
}
