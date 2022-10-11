# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  # создаю новый хэш с параметором
  male_genders = users.filter { |user| user[:gender] == 'male' }
  # срезаю дату рождения
  birthday_mens = male_genders.map { |user| user[:birthday][0, 4] }

  birthday_mens.tally
end
# END
