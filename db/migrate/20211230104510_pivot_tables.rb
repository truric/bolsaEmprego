class PivotTables < ActiveRecord::Migration[5.2]
  def change

    create_table :candidate_entities do |t|
      t.integer :candidate_id
      t.integer :entity_id

      t.timestamps
    end

    create_table :candidate_job_offers do |t|
      t.integer :candidate_id
      t.integer :job_offer_id

      t.timestamps
    end

    create_table :entity_candidates do |t|
      t.integer :entity_id
      t.integer :candidate_id

      t.timestamps
    end

  end
end
