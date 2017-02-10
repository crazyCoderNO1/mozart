//
//  MicService.swift
//  mozart
//
//  Created by David Kwok Ho Chan on 2/9/17.
//  Copyright © 2017 David Kwok Ho Chan. All rights reserved.
//

import Foundation
import AVFoundation

class MicService : NSObject, AVAudioRecorderDelegate, AVAudioPlayerDelegate{
    
    var audioRecorder : AVAudioRecorder?
    var fileName = "audioFile.m4a"
    
    override init(){
        super.init()
        self.setUpAudioRecorder()
    }
    
    func setUpAudioRecorder() {
        var recordSettings = [AVFormatIDKey : kAudioFormatAppleLossless,
                              AVEncoderAudioQualityKey : AVAudioQuality.max.rawValue,
                              AVEncoderBitRateKey : 320000,
                              AVNumberOfChannelsKey : 2,
                              AVSampleRateKey : 44100.0] as [String : Any]
        do{
            try self.audioRecorder = AVAudioRecorder.init(url: getFileUrl(), settings: recordSettings)
        } catch{
            print("AudioRecorder set up failed")
        }
        self.audioRecorder?.delegate = self
        self.audioRecorder?.prepareToRecord()
    }
    
    func getCacheDirectory() -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        return paths[0]
        
    }
    
    func getFileUrl() -> URL {
        
        let fileComponent = "\"" + fileName
        let path = getCacheDirectory().appending(fileComponent)
        let filePath = URL(fileURLWithPath: path)
        return filePath
        
    }
    
    func soundRecordingAction() -> Bool{
        self.audioRecorder?.record(forDuration: 10)
    }
    
    func determineFrequency(){
        
    }
    
    func noteDetectedListener(){
        
    }
    
}
