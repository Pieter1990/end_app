class Aanwezig < ActiveRecord::Base
  belongs_to :vak
  belongs_to :student
end
