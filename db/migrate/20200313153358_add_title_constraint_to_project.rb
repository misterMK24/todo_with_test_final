class AddTitleConstraintToProject < ActiveRecord::Migration[5.2]
  def up
    execute "ALTER TABLE projects ADD CONSTRAINT title_should_not_be_NULL CHECK (
    title IS NOT NULL
    )"
  end

  def down
    execute "ALTER TABLE projects DROP CONSTRAINT IF EXISTS title_should_not_be_NULL"
  end
end
