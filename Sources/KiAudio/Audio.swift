import AVFoundation

var audioPlayer: AVAudioPlayer?

public func playSound(_ sound: String) {
    print("playSound: \(sound)")
    if let path = Bundle.main.path(forResource: sound, ofType: "wav") {
        print(path)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
}
