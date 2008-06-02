#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../config/boot'
require File.dirname(__FILE__) + '/../config/environment'

Label.new(:label => "Dushbag Corp").save
Label.new(:label => "Bush Corp").save

Album.new(:title => "Bubles", :label_id => 1).save
Album.new(:title => "War Machine", :label_id => 2).save

Song.new(:title => "Bubles", :artist => "Martin", :album_id => 1).save
Song.new(:title => "Blue Waters", :artist => "Martin", :album_id => 1).save
Song.new(:title => "10 Leages Under the Sea", :artist => "Silvia", :album_id => 1).save
Song.new(:title => "Dimond Shark", :artist => "Door", :album_id => 1).save
Song.new(:title => "Eal Ear", :artist => "Door", :album_id => 1).save
Song.new(:title => "Waves of Ephifine", :artist => "Markis", :album_id => 1).save
Song.new(:title => "Colers of Destruction", :artist => "Raiger", :album_id => 2).save
Song.new(:title => "Machine of War", :artist => "Raiger", :album_id => 2).save
