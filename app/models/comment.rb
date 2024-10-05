class Comment < ApplicationRecord
  include Visible

  belongs_to :article
  has_many :likes, dependent: :destroy
end
