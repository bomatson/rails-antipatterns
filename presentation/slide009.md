            ___       __              __     ________    _ __    __   ______            __             ____
           /   |     / /  ____  _____/ /_   / ____/ /_  (_) /___/ /  / ____/___  ____  / /__________  / / /__  _____
          / /| |    / /  / __ \/ ___/ __/  / /   / __ \/ / / __  /  / /   / __ \/ __ \/ __/ ___/ __ \/ / / _ \/ ___/
         / ___ |   / /___ /_/ (__  ) /_   / /___/ / / / / / /_/ /  / /___/ /_/ / / / / /_/ /  / /_/ / / /  __/ /
        /_/  |_|  /_____\____/____/\__/   \____/_/ /_/_/_/\__,_/   \____/\____/_/ /_/\__/_/   \____/_/_/\___/_/

        In the view, let's present the songs of an album through AlbumsController#show

        %h2= @album.title
        %p
          By:
          = @album.artist

        %ul
          - @album.songs.each do |song|
            %li= link_to song.title, song

        = link_to 'Add song', new_song_url(album_id: @album.id)
















































































slide 9