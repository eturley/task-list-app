class Task < ActiveRecord::Base
  belongs_to :TaskList
  belongs_to :User

  scope :completed, -> { where(iscompleted: true).order(created_at: :desc) }
  scope :pending, -> { where(iscompleted: false).order(created_at: :asc)}

  validates :title, :duedate, :priority, :TaskList_id, presence: true
  validates :priority, inclusion: { in: 1..10, message: "\"%{value}\" must be between 1 and 10"}

  def to_s
  	name
  end

end
