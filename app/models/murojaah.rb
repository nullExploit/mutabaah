class Murojaah < ApplicationRecord
    belongs_to :user
    validates :total_rakaat, :total_page, :no_surah, :grade, presence: true
end
