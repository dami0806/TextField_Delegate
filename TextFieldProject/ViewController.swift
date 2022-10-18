//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 박다미 on 2022/10/17.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
       setup()
        // Do any additional setup after loading the view.
    }
    func setup(){
        view.backgroundColor = UIColor.gray
        textField.keyboardType =  UIKeyboardType.emailAddress
        textField.placeholder = "email@naver.com"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .next
        
    }
    //텍스트필드의 입력을 시작할때 호출 (시작할지 말지 여부 허락하는 것)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
//리턴 없는 textField: 시점
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 시작했다.")
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    //한글자씩 입력되거나 지울때 호출(허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        print(#function)
        return true
    }
    //텍스트 필드의 엔터키가 눌리면 다음동작 할지안할지
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        if textField.text == ""{
            textField.placeholder = "Typing Something!"
            return false
        }
        else {
        return true
    }
    }
    
    //텍스트 필드의 입력이 끝나면 끝낼지 말지 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    //텍스트필드 입력이 끝났을때 호출(시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드 입력을 끝냈다")
    }
    @IBAction func doneBtnTapped(_ sender: UIButton) {
        print(#function)
        
    }
    
    
    


}

