class Store < ApplicationRecord
  has_many :employee

  def self.search(keyword)
    if keyword
      Store.where("name LIKE ?", "%#{keyword}%").select(:id, :name)
    else
      nil
    end
  end
end
