class Company < ActiveRecord::Base
    validates_presence_of :name
    validates_presence_of :manager
    validates_presence_of :created_at
    validates_presence_of :updated_at

    def self.import(file)
     CSV.foreach(file.path, headers: true) do |row|
        Company.create! row.to_hash
     end
    end
end
 