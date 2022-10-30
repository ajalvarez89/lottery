class Raffle < ApplicationRecord
  enum status: %i[paid unpaid]

  validates_uniqueness_of :number, on: :create
  after_create :set_default_status

  private

  def set_default_status
    self.unpaid!
  end
end
