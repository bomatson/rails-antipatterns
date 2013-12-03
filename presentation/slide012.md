            ___       __              __     ________    _ __    __   ______            __             ____
           /   |     / /  ____  _____/ /_   / ____/ /_  (_) /___/ /  / ____/___  ____  / /__________  / / /__  _____
          / /| |    / /  / __ \/ ___/ __/  / /   / __ \/ / / __  /  / /   / __ \/ __ \/ __/ ___/ __ \/ / / _ \/ ___/
         / ___ |   / /___ /_/ (__  ) /_   / /___/ / / / / / /_/ /  / /___/ /_/ / / / / /_/ /  / /_/ / / /  __/ /
        /_/  |_|  /_____\____/____/\__/   \____/_/ /_/_/_/\__,_/   \____/\____/_/ /_/\__/_/   \____/_/_/\___/_/

        Hey, fuck this! I'm going to keeping passing album_id around like a hot potato

        Let's try making use of nested resources:

        Antipatterns::Application.routes.draw do
          resources :albums do
            resources :songs
          end
        end
















































































slide 12
