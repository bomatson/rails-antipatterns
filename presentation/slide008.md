            ___       __              __     ________    _ __    __   ______            __             ____
           /   |     / /  ____  _____/ /_   / ____/ /_  (_) /___/ /  / ____/___  ____  / /__________  / / /__  _____
          / /| |    / /  / __ \/ ___/ __/  / /   / __ \/ / / __  /  / /   / __ \/ __ \/ __/ ___/ __ \/ / / _ \/ ___/
         / ___ |   / /___ /_/ (__  ) /_   / /___/ / / / / / /_/ /  / /___/ /_/ / / / / /_/ /  / /_/ / / /  __/ /
        /_/  |_|  /_____\____/____/\__/   \____/_/ /_/_/_/\__,_/   \____/\____/_/ /_/\__/_/   \____/_/_/\___/_/

        There are clear challenges to mapping the capabilites of a Model through the Controller layer

        Let's check out a pretty basic association between an album and its songs:

        class Album < ActiveRecord::Base
          has_many :songs
        end

        class Song < ActiveRecord::Base
          belongs_to :album
        end
















































































slide 8