         _       __               __                 ____  ______  __
        | |     / /___ ___  __   / /_____  ____     / __ \/ __ \ \/ /
        | | /| / / __ `/ / / /  / __/ __ \/ __ \   / / / / /_/ /\  /
        | |/ |/ / /_/ / /_/ /  / /_/ /_/ / /_/ /  / /_/ / _, _/ / /
        |__/|__/\__,_/\__, /   \__/\____/\____/  /_____/_/ |_| /_/
                     /____/
        The DRY Principle is not about having the least lines of code

        This example is a Purchase model which can have many statuses:

        class Purchase < ActiveRecord::Base
          STATUSES = %w(in_progress submitted approved shipped received)

          validates_presence_of :status
          validates_inclusion_of :status, in: STATUSES

          class << self
            STATUSES.each do |status_name|
              define_method "all_#{status_name}" do
                where(status: status_name)
              end
            end
          end

          STATUSES.each do |status_name|
            define_method "#{status_name}?" do
              status == status_name
            end
          end
        end
















































































slide 6