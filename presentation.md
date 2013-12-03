# Rails AntiPatterns

## A Crowdsourced Update

![](app/assets/images/megaman.png)

by Little Bobby Tables


# The Format

- 3 common Rails AntiPatterns will be presented
- I will propose a solution to each
- Anyone can propose another solution
- The "best" solution will get a gold star
- Most gold stars wins


# Fat Models

Growing a Rails Model beyond its needs introduces complexity

Single Responsibility Principle: "There should never be more than one reason for a class to change"

![](app/assets/images/sumo.jpg)


# Fat Models

Growing a Rails Model beyond its needs introduces complexity

```ruby
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
````


# Way too DRY

The DRY Principle is not about having the least lines of code

DRY is about reducing:

1. the possibility of developer error
2. the effort required to make business logic changes in the application


# Way too DRY

The DRY Principle is not about having the least lines of code

This example is a Purchase model which can have many statuses:

````ruby
class Purchase < ActiveRecord::Base

end

# Million Model March
p 74

# Monolithic Controllers
p 161

