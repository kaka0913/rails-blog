class Comment < ApplicationRecord
  include Visible

  belongs_to :article
  belongs_to :user
  has_many :likes, dependent: :destroy
end
