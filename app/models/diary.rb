class Diary < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 10_000 }
  validate :proper_title_and_body

  def proper_title_and_body
    unless title.match(/^今日/) 
      errors.add(:title, 'は「今日」から始めてください。')
    end
    unless body.match(/。$/)
      errors.add(:body, 'は句点（。）で終了してください。')
    end
  end
end
