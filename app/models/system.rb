class System < ActiveRecord::Base
  belongs_to :os
  belongs_to :java
  belongs_to :ap
end
