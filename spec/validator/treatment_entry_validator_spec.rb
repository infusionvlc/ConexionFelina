require 'rails_helper'
 
 RSpec.describe TreatmentEntryValidator do
 
   context 'given a date with an empty field' do
     it 'must be invalid' do
       invalid_treatment_entry =TreatmentEntry.new(date: nil)
       invalid_treatment_entry.suffering = Suffering.new()
       expect(invalid_treatment_entry).to_not be_valid
     end
   end

    context 'given a treatment with an empty field' do
     it 'must be invalid' do
      invalid_treatment_entry =TreatmentEntry.new(treatment: nil)
      invalid_treatment_entry.suffering = Suffering.new()
 
       expect(invalid_treatment_entry).to_not be_valid
     end
   end
 
   context 'given a suffering with its last date earlier ' do
     it 'must be valid' do
      valid_treatment_entry = TreatmentEntry.new(date: Date.new(2001,2,3),treatment:1)
      valid_treatment_entry.suffering = Suffering.new()
       expect(valid_treatment_entry).to be_valid
     end
   end
 
   context 'given a date later than today or today' do
     it 'must be invalid' do
       invalid_treatment_entry = TreatmentEntry.new(date: Date.tomorrow,treatment:1)
       invalid_treatment_entry.suffering = Suffering.new()
       expect(invalid_treatment_entry).to_not be_valid
     end
   end
 
   context 'given a notes  with an amount bigger than 1024 ' do
     it 'must be invalid' do
      invalid_treatment_entry = TreatmentEntry.new(date: Date.yesterday,treatment:1,notes:"morbi tristique senectus et netus et malesuada fames ac turpis egestas integer eget aliquet nibh praesent tristique magna sit amet purus gravida quis blandit turpis cursus in hac habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris a diam maecenas sed enim ut sem viverra aliquet eget sit amet tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices eros in cursus turpis massa tincidunt dui ut ornare lectus sit amet est placerat in egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget felis eget nunc lobortis mattis aliquam faucibus purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus in hac habitasse platea dictumst" )
      invalid_treatment_entry.suffering = Suffering.new()
 
       expect(invalid_treatment_entry).to_not be_valid
     end
   end
 
   context 'given a notes with an amount smaller or equal to 1024' do
     it 'must be valid' do
      valid_treatment_entry = TreatmentEntry.new(date: Date.yesterday,treatment:1 ,notes: "lorem ipsum")
      valid_treatment_entry.suffering = Suffering.new()
       expect(valid_treatment_entry).to be_valid
     end
   end
end
