class Cat < ApplicationRecord
    enum gender: [:Male, :Famale, :Unknown]
    enum sterilized: [:Yes, :No, :Unknown]
end
