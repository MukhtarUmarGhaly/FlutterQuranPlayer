import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_audio/components/my_drawer.dart';
import 'package:quran_audio/models/playlist_provider.dart';
import 'package:quran_audio/models/song.dart';
import 'package:quran_audio/pages/song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Search functionality
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void goToSong(int songIndex) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);
    provider.currentSongIndex = songIndex;
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SongPage()),
    );
  }

  // Filter songs based on search query
  List<Song> _filterSongs(List<Song> playlist) {
    if (_searchQuery.isEmpty) return playlist;
    
    return playlist.where((song) =>
      song.songName.toLowerCase().contains(_searchQuery.toLowerCase()) ||
      song.artistName.toLowerCase().contains(_searchQuery.toLowerCase())
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("J U Z  A M M A", style: TextStyle(fontWeight: FontWeight.bold),), centerTitle: true,),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search surah...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          
          // Playlist
          Expanded(
            child: Consumer<PlaylistProvider>(
              builder: (context, value, child) {
                final filteredPlaylist = _filterSongs(value.playlist);
                
                if (filteredPlaylist.isEmpty) {
                  return const Center(
                    child: Text('No surahs found'),
                  );
                }
                
                return ListView.builder(
                  itemCount: filteredPlaylist.length,
                  itemBuilder: (context, index) {
                    final Song song = filteredPlaylist[index];
                    final bool isPlaying = value.currentSongIndex == index;
                    
                    return ListTile(
                      title: Text(song.songName),
                      subtitle: Text(song.artistName),
                      leading: Icon(
  isPlaying ? Icons.pause : Icons.play_arrow_rounded,
  
),
                      onTap: () => goToSong(index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}