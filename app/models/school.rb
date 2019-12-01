class School < ApplicationRecord
  has_many :users
  
  scope :draft, -> { where(status: 0) }
  scope :active, -> { where(status: 1) }
  scope :fund_raising, -> { where(status: 2) }
  scope :built, -> { where(status: 3) }

  enum status: {
    draft: 0,
    active: 1,
    fund_raising: 2,
    built: 3
  }
end
