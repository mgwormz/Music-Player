require './input_functions'

# It is suggested that you put together code from your 
# previous tasks to start this. eg:
# TT3.2 Simple Menu Task
# TT5.1 Music Records
# TT5.2 Track File Handling
# TT6.1 Album file handling

module Genre
  HIPHOP, METAL, ELECTRONIC, ROCK = *1..4
end

Genre_names = ['Null', 'HipHop', 'Metal', 'Electronic', 'Rock']

class Album
	attr_accessor :album_id, :title, :artist, :genre, :tracks

	def initialize (album_id, title, artist, genre, tracks)
		@album_id = album_id
    @title = title
		@artist = artist
		@genre = genre
		@tracks = tracks
	end
end

class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name
		@location = location
	end
end



def read_track(music_file)
	  track_name = music_file.gets
  	track_location = music_file.gets
  	track = Track.new(track_name, track_location)
end



def read_tracks(music_file)
	  count = music_file.gets().to_i()
  	tracks = Array.new()
	  i = 0
  	while i < count 
      track = read_track(music_file)
      tracks << track
      i += 1
  	end
	return tracks
end



def print_tracks(tracks)
	i = 0
	while i < tracks.length 
    	print_track(tracks[i])
    	i += 1
  	end
end



def print_track(track)
  	puts(track.name)
	  puts(track.location)
end



def read_album()
    music_file = File.new("album.txt", "r")	
    album_id = music.file.gets
    album_title = music_file.gets
    album_artist = music_file.gets
    album_genre = music_file.gets
    tracks = read_tracks(music_file)
    album = Album.new(album_id, album_title, album_artist, album_genre, tracks)
    puts('Loaded Successfully')
    return album
end



def read_albums()
    album_id = music.file.gets.to_i
    albums = Array.new()
    i = 0
      while i < album.id.count
      album = read_album(music_file)
      albums << album
      i += 1 
      end
  return albums
end



def print_album(album)
    puts(album.album_id.to_s)
    puts(album.title.to_s)
    puts(album.artist.to_s)
    puts('Genre is ' + album.genre.to_s)
    puts(Genre_names[album.genre.to_i])
    print_tracks(album.tracks)
end



def print_albums(albums)
    i = 0
    while i < 1
      print_album(albums)
      i += 1
    end
end



def print_all(album)
    i = 0
    while i < 1
      print_albums(album)
      print_tracks(album.tracks)
      puts(album.album_id)
      i += 1
    end
end



def display_album()
  finished = false
  begin
    puts("Display Albums")
    puts('1 - Display All')
    puts('2 - Display Genre')
    puts('3 - Return to Main Menu')
    choice = read_integer_in_range("Please enter your choice:", 1, 3)
    case choice
      when 1
        print_all(album)
      when 2
        
      when 3
        return main
      else 
        puts('please select again')
    end
  end until finished == true
end



def play_album()
  finished = false
  begin
    puts('Play Album')
    puts('1 - Play by ID')
    puts('2 - Search')
    puts('3 - Return to Main Menu')
    choice = read_integer_in_range("Please enter your choice:", 1, 3)
    case choice
      when 1
        
      when 2

      when 3
        return main
        
      else
        puts('Please select again')
    end
  end until finished == true
end 

def update_album()
  puts('Update Album:')
  puts("Update an album's info.")

end 



def main()
  finished = false
  begin
    puts('Main Menu:')
    puts('1 - Read in Album')
    puts('2 - Display Album Info')
    puts('3 - Play Album')
    puts('4 - Update Album')
    puts('5 - Exit')
    choice = read_integer_in_range("Please enter your choice:", 1, 5)
    case choice
      when 1
        read_album()
      when 2
        display_album()
      when 3
        play_album()
      when 4 
        update_album()
      when 5
        finished = true
      else
        puts('Please select again')
    end
  end until finished == true
  puts('Ok Goodbye!')
end
	
main()
