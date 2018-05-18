class Cat < ApplicationRecord
    enum gender: [:male, :female]
    enum sterilized: [:yes, :no]
end
