require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:54645)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:54684588)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the artist name' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:54645)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:54684588)
    visit "/songs/#{song.id}"

    expect(page).to have_content(artist.name)
  end
end
