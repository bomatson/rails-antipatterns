            ___       __              __     ________    _ __    __   ______            __             ____
           /   |     / /  ____  _____/ /_   / ____/ /_  (_) /___/ /  / ____/___  ____  / /__________  / / /__  _____
          / /| |    / /  / __ \/ ___/ __/  / /   / __ \/ / / __  /  / /   / __ \/ __ \/ __/ ___/ __ \/ / / _ \/ ___/
         / ___ |   / /___ /_/ (__  ) /_   / /___/ / / / / / /_/ /  / /___/ /_/ / / / / /_/ /  / /_/ / / /  __/ /
        /_/  |_|  /_____\____/____/\__/   \____/_/ /_/_/_/\__,_/   \____/\____/_/ /_/\__/_/   \____/_/_/\___/_/

        Wait, what's the deal with that album_id? Well I guess I need to modify the SongsController#new action now...

        class SongsController < ApplicationController
          def new
            @song = Song.new(album_id: params[:album_id])
          end
        end
















































































slide 10