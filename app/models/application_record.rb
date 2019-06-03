class ApplicationRecord < ActiveRecord::Base

  self.abstract_class = true

  def self.filter(filter)
    if filter
      where(date: filter)
    end
  end
end
