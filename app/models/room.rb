class Room < ActiveRecord::Base
validates :name, {presence: true, uniqueness: true}
  def self.search(search)
        Room.where(['name LIKE ?', "%#{search}%"])
  end

end
