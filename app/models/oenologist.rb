class Oenologist < ApplicationRecord
    has_many :oenologist_magazines, dependent: :destroy
    has_many :magazines, through: :oenologist_magazines, dependent: :destroy
    accepts_nested_attributes_for :oenologist_magazines, reject_if: :all_blank, allow_destroy: true

end