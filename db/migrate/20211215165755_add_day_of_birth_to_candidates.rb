class AddDayOfBirthToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :dob, :datetime
  end
end
