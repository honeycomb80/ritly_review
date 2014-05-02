class AddUrlIdToVisits < ActiveRecord::Migration
  def change
    add_reference :visits, :url, index: true
  end
end
