//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = []
    
    var convertToLetter = false
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        if member == "" || member == nil {
            return
        }
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        convertToLetter = true
        var functionCall = secretName()
        
        convertToLetter = false
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        var functionCall = secretName()
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall

        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    
    func secretNameLetter() -> String {
        var secretLetter = ""
        for name in membersNamesArray {
            secretLetter += String(name.first!).capitalized
        }
        
        return secretLetter
    }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    
    func secretNameEmoji() -> String{
        let emojiCharacter = ["Q":"🎩", "W":"😁", "E":"😓", "R":"🦴", "T":"🌓", "Y":"🐸", "U":"🕶", "I":"🖐🏻", "O":"😈", "P":"👽", "A":"🤡", "S":"🎃", "D":"🐶", "F":"🐧", "G":"🐒", "H":"🐛", "J":"🕸", "K":"🐪", "L":"🐳", "Z":"🌵", "X":"🌳", "C":"🥐", "V":"🍳", "B":"🍔", "N":"🥑", "M":"🍦"]
        
        var secretName = ""
        
        let nameLetter = secretNameLetter()
        
        for letter in nameLetter {
            var stringLetter = String(letter)
            
            secretName += emojiCharacter[stringLetter]!
        }
        return secretName
    }
    
    
    // MARK: -   النهاية
    
    
    func secretName() -> String{
        if convertToLetter {
            return secretNameLetter()
        }else {
            return secretNameEmoji()
        }
    }
    
    
}


