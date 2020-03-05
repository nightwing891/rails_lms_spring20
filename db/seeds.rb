roles = ['teacher', 'ta', 'student']
5.times do
  course = Course.create(
    name: Faker::Kpop.boy_bands
  )

  3.times do
    user = User.create(
      first_name: Faker::TvShows::BojackHorseman.character,
      last_name: Faker::TvShows::Stargate.planet
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end

puts 'Data has been seeded'