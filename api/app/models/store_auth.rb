class StoreAuth < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable,
          :jwt_authenticatable,
          :registerable,
          authentication_keys: [:store_login_id],
          jwt_revocation_strategy: self

  has_one :store
end
