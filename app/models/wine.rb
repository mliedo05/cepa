class Wine < ApplicationRecord
    has_many :wines_strains
    has_many :strains, through: :wines_strains, dependent: :destroy
    accepts_nested_attributes_for :wines_strains, reject_if: :all_blank, allow_destroy: true
    
    def strain_and_percent
        name_percent = []
        wines_strains.map do |ws|
            name_percent.push [ws.strain.name, ws.percent] 
        end
        name_percent.sort_by{ |strain| strain[0] }.map do |cepa|
            "#{cepa[0]} (#{cepa[1]})%"
        end.join(', ')
    end
end
