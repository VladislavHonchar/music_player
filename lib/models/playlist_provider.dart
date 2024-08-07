import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';

class PlaylistProvider extends ChangeNotifier{
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "I LOVE MINECRAFT", 
      artistName: "MC Shkolyar", 
      albumArtImagePath: "assets/images/album1.jpg", 
      audioPath: "audio/firstsong.mp3",
      ),
    // song 2
    Song(
      songName: "Like song", 
      artistName: "MC Teteriv", 
      albumArtImagePath: "assets/images/album2.jpg", 
      audioPath: "audio/firstsong.mp3",
      ),
    // song 3
    Song(
      songName: "So Sick", 
      artistName: "Sadochok", 
      albumArtImagePath: "assets/images/album3.jpg", 
      audioPath: "audio/firstsong.mp3",
      ),
  ];

  // current song playing index
  int? _currentSongIndex;

  /*
  
  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*
  
  S E T T E R S

  */

  set currentSongIndex(int? newIndex){
    // update current song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}