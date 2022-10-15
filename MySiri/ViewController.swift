//
//  ViewController.swift
//  MySiri
//
//  Created by Aboubacar Thomas Sidibe on 10/15/21.
// Code with French

import UIKit
import InstantSearchVoiceOverlay
class ViewController : UIViewController {
    
    lazy var voiceOverlay : VoiceOverlayController = {
        let recordableHandler = {
          return SpeechController(locale: Locale(identifier: "fr_FR"))
        }
        return VoiceOverlayController(speechControllerHandler: recordableHandler)
      }()

    
    @IBOutlet var myButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .systemRed
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton(){
        voiceOverlay.start(on: self, textHandler: {text, final , _ in
            if final{
                print("Final text is \(text)")
            }
            else
            {
                print("In progress \(text)")
            }
        }, errorHandler: { error in
            
        })

    }


}

