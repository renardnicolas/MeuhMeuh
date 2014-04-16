class MeuhScreen < ProMotion::Screen
  def on_load
    view.on_rotate do |gesture|
       Dispatch::Queue.concurrent.async do
          mainBundle = NSBundle.mainBundle
          filePath = mainBundle.pathForResource("vache", ofType:"mp3")
          fileData = NSData.dataWithContentsOfFile(filePath)
          err = Pointer.new('@')
          @audio_player = AVAudioPlayer.alloc.initWithData(fileData, error: err)
          unless (@audio_player.nil?)
            @audio_player.delegate = self
            @audio_player.prepareToPlay && @audio_player.play
          end
        end
    end
  end
end