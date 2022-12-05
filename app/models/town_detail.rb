class TownDetail < ApplicationRecord
  belongs_to :town

  enum size: {
    thorp: 1,
    hamlet: 2, 
    village: 3,
    small_town: 4,
    large_town: 5,
    small_city: 6,
    large_city: 7,
    metropolis: 8
  }
end
