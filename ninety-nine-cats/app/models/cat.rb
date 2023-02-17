# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

    CAT_COLORS = ["black", "white", "gray", "orange"]
        
    
    validates :birth_date, presence: true
    validates :color, inclusion: { in: CAT_COLORS}
    validates :sex, inclusion: {in: %w(M F)}
    validates :name, presence:true
    
    validate: birth_date_cannot_be_true
    

end
