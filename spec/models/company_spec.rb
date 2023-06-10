require 'rails_helper'

RSpec.describe Company, :type => :model do
    subject {
        described_class.new(name: "Anything",
                            manager: "Lorem ipsum",
                            created_at: DateTime.now,
                            updated_at: DateTime.now + 1.week)
      }

        it "is valid with valid attributes" do
            expect(subject).to be_valid
          end
        
          it "is not valid without a title" do
            subject.name = nil
            expect(subject).to_not be_valid
          end
        
          it "is not valid without a description" do
            subject.manager = nil
            expect(subject).to_not be_valid
          end
        
          it "is not valid without a start_date" do
            subject.created_at = nil
            expect(subject).to_not be_valid
          end
        
          it "is not valid without a end_date" do
            subject.updated_at = nil
            expect(subject).to_not be_valid
          end
end