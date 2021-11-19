class Post < ApplicationRecord
  belongs_to :user

  scope :not_delete, -> { where(deleted_at: nil)}

  def destroy
    update_attribute( :deleted_at, Date.today)
  end
end
