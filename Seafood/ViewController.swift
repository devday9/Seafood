//
//  ViewController.swift
//  Seafood
//
//  Created by Deven Day on 8/10/21.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController {
    
    //MARK: - Properties
    let imagePicker = UIImagePickerController()
    
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    //MARK: - Actions
    @IBAction func cameraButtonTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    //MARK: - Helper Functions
    func setupViews() {
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }
    
}//END OF CLASS

//MARK: - Extensions
extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            imageView.image = userPickedImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
}//END OF EXTENSION

extension ViewController: UINavigationControllerDelegate {
    
}//END OF EXTENSION
