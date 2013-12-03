# Rails AntiPatterns

## A Crowdsourced Update

![](app/assets/images/megaman.png)

by Little Bobby Tables


# The Format

 3 common Rails AntiPatterns will be presented

 I will propose a solution to each

 Anyone can propose another solution

 Passing solutions will get a bow

 Most bows win!

![](app/assets/images/star.jpg)


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


# Million Model March

Overusing ActiveRecord models adds unnecessary overhead

Example: I have many models which needs statuses, why not add a Status model?

````ruby
class Purchase < ActiveRecord::Base
  belongs_to :status

  validates :status_id, presence: true
end

class Status < ActiveRecord::Base
  has_many :purchases
end
````

OBVI, NO!

You see this and think, "I'm clever, I can reduce this complexity and get rid of the model. DRY the sucker right up"


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
````


# A Lost Child Controller

There are clear challenges to mapping the capabilites of a Model through the Controller layer

Let's check out a pretty basic association between an album and its songs:

````ruby
class Album < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :album
end
````


# A Lost Child Controller

In the view, let's present the songs of an album through AlbumsController#show

````ruby
%h2= @album.title
%p
  By:
  = @album.artist

%ul
  - @album.songs.each do |song|
    %li= link_to song.title, song

= link_to 'Add song', new_song_url(album_id: @album.id)
````


# A Lost Child Controller

Wait, what's the deal with that album_id? Well I guess I need to modify the SongsController#new action now...

````ruby
class SongsController < ApplicationController
  def new
    @song = Song.new(album_id: params[:album_id])
  end
end
````


# A Lost Child Controller

Well now I need a hidden field in that SongsController#new view...

````ruby
= form_for @song do |f|
  = f.hidden_field :album_id
  # ...
````


# A Lost Child Controller

Hey, fuck this! I'm going to keeping passing album_id around like a hot potato

Let's try making use of nested resources:

````ruby
Antipatterns::Application.routes.draw do
  resources :albums do
    resources :songs
  end
  resources :songs
end
````


fin.
