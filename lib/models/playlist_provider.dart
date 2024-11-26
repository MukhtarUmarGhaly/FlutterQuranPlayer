import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_audio/models/song.dart';

class PlaylistProvider extends ChangeNotifier{
  // playlist of song
  final List<Song> _playlist = [
    //song 1
    Song(
      songName: "078 Suratul Naba",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/078 Naba.aac",
      

    ),
     //song 2
    Song(
      songName: "079 Suratul Naziat",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/079 Naziat.aac",
    

    ),
     //song 3
    Song(
      songName: "080 Suratul Abasa",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/080 Abasa.aac",
      

    ),
     //song 4
    Song(
      songName: "081 Suratul Takwir",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/081 Takwir.aac",
      

    ),
     //song 5
    Song(
      songName: "082 Suratul Infitar",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/082 Infitar.aac",
      

    ),
     //song 6
    Song(
      songName: "083 Suratul Mudaffifin",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/083 Mudaffifin.aac",
      

    ),
     //song 1
    Song(
      songName: "084 Suratul Inshiqaq",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/084 Inshiqaq.aac",
      

    ),
     //song 1
    Song(
      songName: "085 Suratul Buruj",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/085 Buruj.aac",
      

    ),
     //song 1
    Song(
      songName: "086 Suratul Tariq",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/086 Tariq.aac",
      

    ),
     //song 1
    Song(
      songName: "087 Suratul A'ala",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/087 A'ala.aac",
      

    ),
     //song 1
    Song(
      songName: "088 Suratul Gashiya",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/088 Gashiya.aac",
      
    ),
     //song 1
    Song(
      songName: "089 Suratul Fajr",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/089 Fajr.aac",
      

    ),
    
     //song 1
    Song(
      songName: "090 Suratul Balad",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/090 Balad.aac",
      

    ),
     //song 1
    Song(
      songName: "091 Suratul Shams",
      artistName: "Ustaz Abdurrahman",
albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/091 Shams.aac",
      

    ),
     //song 1
    Song(
      songName: "092 Suratul Layl",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/092 Lail.aac",
      

    ),
     //song 1
    Song(
      songName: "093 Suratul Duha",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/093 Duha.aac",
      

    ),
     //song 1
    Song(
      songName: "094 Suratul Sharh",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/094 Sharh.aac",
      

    ),
     //song 1
    Song(
      songName: "095 Suratul Tin",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/095 Tin.aac",
      

    ),
     //song 1
    Song(
      songName: "096 Suratul Alaq",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/096 Alaq.aac",
      

    ),
     //song 1
    Song(
      songName: "097 Suratul Qadr",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/097 Qadr.aac",
      

    ),
     //song 1
    Song(
      songName: "098 Suratul Lail",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/098 Lail.aac",
      

    ),
     //song 1
    Song(
      songName: "099 Suratul Zalzalah",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/099 Zalzalah.aac",
      

    ),
     //song 1
    Song(
      songName: "100 Suratul Adiyat",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/100 Adiyat.aac",
      

    ),
     //song 1
    Song(
      songName: "101 Suratul Qari'ah",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/101 Qariah.aac",
      

    ),
     //song 1
    Song(
      songName: "102 Suratul Takathur",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/102 Takathur.aac",
      

    ),
     //song 1
    Song(
      songName: "103 Suratul Asr",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/103 Asr.aac",
      

    ),
     //song 1
    Song(
      songName: "104 Suratul Humazah",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/104 Humazah.aac",
     

    ),
     //song 1
    Song(
      songName: "105 Suratul Fil",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/105 Fil.aac",
      

    ),
     //song 1
    Song(
      songName: "106 Suratul Quraish",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/106 Quraish.aac",
      

    ),
     //song 1
    Song(
      songName: "107 Suratul Maaun",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/107 Mauun.aac",
      

    ),
     //song 1
    Song(
      songName: "108 Suratul Kawthar",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/108 Kauthar.aac",
      

    ),
     //song 1
    Song(
      songName: "109 Suratul Kafirun",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/109 Kafirun.aac",
      

    ),
     //song 1
    Song(
      songName: "110 Suratul Nasr",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/quran.jpg",
      audioPath: "audio/110 Nasr.aac",
     

    ),
     //song 1
    Song(
      songName: "111 Suratul Masad",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/111 Masad.aac",
      

    ),
     //song 1
    Song(
      songName: "112 Suratul Ahad",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/112 Ahad.aac",
    

    ),
     //song 1
    Song(
      songName: "113 Suratul Falaq",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/quran.jpg",
      audioPath: "audio/113 Falaq.aac",
     

    ),
     //song 1
    Song(
      songName: "114 Suratul Nas",
      artistName: "Ustaz Abdurrahman",
      albumArtImagepath: "assets/images/qur.jpg",
      audioPath: "audio/114 Nas.aac",
     
    ),
  ];

  //current song
  int? _currentSongIndex;

  /*
  AUDIO PLAYER

  */

  // audio player
final AudioPlayer _audioPlayer = AudioPlayer();
//durations
Duration _currentDuration = Duration.zero;
Duration _totalDuration = Duration.zero;

//constructor
PlaylistProvider(){
  listenToDuration();
}

//initially not playing

bool _isPlaying = false;
//play the song
void play() async{
  final String path = _playlist[_currentSongIndex!].audioPath;
  await _audioPlayer.stop();
  await _audioPlayer.play(AssetSource(path));
  _isPlaying = true;
  notifyListeners();
}

//pause the song
void pause() async{
  await _audioPlayer.pause();
  _isPlaying = false;
  notifyListeners();
}


//resume playin

void resume() async{
  await _audioPlayer.resume();
  _isPlaying = true;
  notifyListeners();
}

//pause or resume
void pauseOrResume(){
  if (_isPlaying){
    pause();
  } else {
    resume();
  }

}


//seek to a specific position
void seek(Duration position)async{
  await _audioPlayer.seek(position);
}

//play next song
void playNextSong(){
  if (_currentSongIndex != null){
    if (_currentSongIndex! < _playlist.length -1){
      // go to next song
      currentSongIndex = _currentSongIndex! +1;
    }
    else {
      // if its the last song
      currentSongIndex = 0;
    }
  }
}

//play previous song
void playPreviousSong() async{
  // if more than 2 seconds have passed, restart the current song
  if (_currentDuration.inSeconds > 2){
    seek(Duration.zero);

  }
  //if its withim the first 2 seconds, go to previous song
  else{
    if (_currentSongIndex! > 0){
      currentSongIndex = _currentSongIndex! -1;
    }
    else {
      // if its the first song, loop back to last song
      currentSongIndex = _playlist.length -1;
    }
  }
}




//listen to duration
 void listenToDuration(){
  //listen for total duration
  _audioPlayer.onDurationChanged.listen((newDuration){
    _totalDuration = newDuration;
    notifyListeners();
  });
  // listen for current duration
  _audioPlayer.onPositionChanged.listen((newPosition){
    _currentDuration = newPosition;
    notifyListeners();
  });
  // listen for song completion
  _audioPlayer.onPlayerComplete.listen((event){
    playNextSong();
    
  });
}


//dispose audio player

  /*
  getters
  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;


  
  /*
  stetters
   */

  set currentSongIndex(int? newIndex){
    // update current song index
    _currentSongIndex = newIndex;

    if (newIndex != null){
      play();// play the song at the new index
    }
    // notify listeners
    notifyListeners();
  }
}
