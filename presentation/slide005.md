            __  ____ _____                __  ___          __     __   __  ___                __
           /  |/  (_) / (_)___  ____     /  |/  /___  ____/ /__  / /  /  |/  /___ ___________/ /_
          / /|_/ / / / / / __ \/ __ \   / /|_/ / __ \/ __  / _ \/ /  / /|_/ / __ `/ ___/ ___/ __ \
         / /  / / / / / / /_/ / / / /  / /  / / /_/ / /_/ /  __/ /  / /  / / /_/ / /  / /__/ / / /
        /_/  /_/_/_/_/_/\____/_/ /_/  /_/  /_/\____/\__,_/\___/_/  /_/  /_/\__,_/_/   \___/_/ /_/

        Overusing ActiveRecord models adds unnecessary overhead

        Example: I have many models which needs statuses, why not add a Status model?

        class Purchase < ActiveRecord::Base
          belongs_to :status

          validates :status_id, presence: true
        end

        class Status < ActiveRecord::Base
          has_many :purchases
        end


        You see this and think, "I'm clever, I can reduce this complexity and get rid of the model. DRY the sucker right up"

















































































slide 5