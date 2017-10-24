class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :due_date, presence: true

  def check_due_date
    due_date < DateTime.now
  end
end
