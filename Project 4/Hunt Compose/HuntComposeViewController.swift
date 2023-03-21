//
//  HuntComposeViewController.swift
//  Project 4
//
//  Created by Santos O. Martínez Braña on 3/20/23.
//

import UIKit

class HuntComposeViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!


    var onComposeTask: ((Hunt) -> Void)? = nil
    var canSave: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        [titleField, descriptionField].forEach({ $0.addTarget(self, action: #selector(editingChanged), for: .editingChanged) })
    }

    @IBAction func didTapDoneButton(_ sender: Any) {

        guard let title = titleField.text,
              let description = descriptionField.text,
              !title.isEmpty,
              !description.isEmpty else {
            presentEmptyFieldsAlert()
            return
        }

        let hunt = Hunt(title: title, description: description)
        onComposeTask?(hunt)
        dismiss(animated: true)
    }


    @IBAction func didTapCancelButton(_ sender: Any) {
        dismiss(animated: true)
    }

    private func presentEmptyFieldsAlert() {
        let alertController = UIAlertController(
            title: "Oops...",
            message: "Both title and description fields must be filled out",
            preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)

        present(alertController, animated: true)
    }

    @objc private func editingChanged(){
        guard let title = descriptionField.text,
              let description = titleField.text, !description.isEmpty &&
                !title.isEmpty else {
            saveButton.isEnabled = false
            return
        }
        saveButton.isEnabled = true
    }


}
