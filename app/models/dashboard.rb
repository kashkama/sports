class Dashboard < ActiveRecord::Base
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
