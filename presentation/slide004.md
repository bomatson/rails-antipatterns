            ______      __     __  ___          __     __
           / ____/___ _/ /_   /  |/  /___  ____/ /__  / /____
          / /_  / __ `/ __/  / /|_/ / __ \/ __  / _ \/ / ___/
         / __/ / /_/ / /_   / /  / / /_/ / /_/ /  __/ (__  )
        /_/    \__,_/\__/  /_/  /_/\____/\__,_/\___/_/____/

        Growing a Rails Model beyond its needs introduces complexity

        class Order < ActiveRecord::Base

          def self.find_purchased
            # ...
          end

          def self.find_waiting_for_review
            # ...
          end

          def self.find_waiting_for_sign_off
            # ...
          end

          def self.find_waiting_for_sign_on
            # ...
          end

          def self.advanced_search(fields, opts = {})
            # ...
          end

          def self.simple_search(terms)
            # ...
          end

          def to_xml
            # ...
          end

          def to_json
            # ...
          end

          def to_csv
            # ...
          end

          def to_pdf
            # ...
          end
        end
















































































slide 4