class Headline < ApplicationRecord
  searchkick autocomplete: ['title']
end
