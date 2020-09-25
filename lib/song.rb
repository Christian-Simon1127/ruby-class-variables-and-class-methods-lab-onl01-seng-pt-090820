class Song 
  attr_accessor :name, :artist, :genre
  
  @@genres = []
  @@count = 0
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end
  
  def self.count
    @@count
  end 
  
  def self.artists 
    ret_arr = [] 
    @@artists.each {|item|
      unless ret_arr.include?(item) 
        ret_arr << item 
      end
    }
    ret_arr
  end 
  
  def self.genres 
    ret_arr = [] 
    @@genres.each {|item|
      unless ret_arr.include?(item) 
        ret_arr << item 
      end
    }
    ret_arr
  end
  
  def self.genre_count 
    ret_hash = {}
    self.genres.each {|item|
      temp_num = 0
      @@genres.each {|i2em|
        if item == i2em
          temp_num += 1
        end
      }
      ret_hash[item] = temp_num
    }
    ret_hash
  end
  
end