class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true
end
class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true
end