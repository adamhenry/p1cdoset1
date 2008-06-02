#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../config/boot'
require File.dirname(__FILE__) + '/../config/environment'

Label.new(:label => "Dushbag Corp").save
Label.new(:label => "Bush Corp").save

Album.new(:title => "Bubles", :label_id => 1).save
Album.new(:title => "War Machine", :label_id => 2).save

Artist.new(:name => "Martin").save
Artist.new(:name => "Silvia").save
Artist.new(:name => "Door").save
Artist.new(:name => "Markis").save
Artist.new(:name => "Raiger").save

Song.new(:title => "Bubles", :artist_id => 1, :album_id => 1).save
Song.new(:title => "Blue Waters", :artist_id => 1, :album_id => 1).save
Song.new(:title => "10 Leages Under the Sea", :artist_id => 2, :album_id => 1).save
Song.new(:title => "Dimond Shark", :artist_id => 3, :album_id => 1).save
Song.new(:title => "Eal Ear", :artist_id => 3, :album_id => 1).save
Song.new(:title => "Waves of Ephifine", :artist_id => 4, :album_id => 1).save
Song.new(:title => "Colers of Destruction", :artist_id => 5, :album_id => 2).save
Song.new(:title => "Machine of War", :artist_id => 5, :album_id => 2).save
