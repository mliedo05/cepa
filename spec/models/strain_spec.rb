require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'strains cant have the same name' do
    strain = Strain.create(name: 'Carmenere')
    expect(strain).to be_invalid
  end
  it 'strain is invalid without name is nill' do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end

  it 'strain name cant be Carmenere' do
    strain = Strain.new(name: 'Carmenere')
    expect(strain).to be_invalid
  end

  it 'is no valid name empty' do
    strain = Strain.create(name:"")
    expect(strain).to_not be_invalid
  end 
end
