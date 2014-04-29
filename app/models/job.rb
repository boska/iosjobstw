class Job < ActiveRecord::Base
  paginates_per 20
  belongs_to :user
  validates :job_title, presence: true
  validates :company_name, presence: true
  validates :location, presence: true
  validates :apply, length: { maximum: 500 }
  validates :description, length: { maximum: 500 }

  def remain_percent
    total_interval = self.deadline.to_f - self.created_at.to_f
    remain_interval = self.deadline.to_f - DateTime.now.to_f
    p = remain_interval / total_interval * 100
    p.floor
  end
  def self.job_hash
    {1 => I18n.t(:full_type),2 => I18n.t(:part_type),3 => I18n.t(:contract_type),4 => I18n.t(:intern_type),5 => I18n.t(:other_type)}
  end
end
