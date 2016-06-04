class Invoice < ActiveRecord::Base
  belongs_to :salesperson
  has_many :purchases, dependent: :destroy
end
