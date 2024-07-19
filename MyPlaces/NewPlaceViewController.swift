//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Милана Махсотова on 19.07.2024.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    @IBOutlet weak var placeNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placeNameTF.becomeFirstResponder()
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                self.chooseImagePicker(source: .camera)
            }
            
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                self.chooseImagePicker(source: .photoLibrary)
                //TODO: change UIImagePickerController to PHPicker
            }
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
                
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: - Work with image

extension NewPlaceViewController {
    
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = source
            imagePicker.allowsEditing = true
            
            present(imagePicker, animated: true)
        }
    }
}


