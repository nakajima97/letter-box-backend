class Store < ApplicationRecord
  has_many :employee
  has_many :message

  def self.search(keyword)
    if keyword
      Store.where("name LIKE ?", "%#{keyword}%").select(:id, :name)
    else
      nil
    end
  end
end
