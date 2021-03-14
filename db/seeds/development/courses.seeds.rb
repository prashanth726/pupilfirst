after 'development:schools' do
  puts 'Seeding courses'

  school = School.first

  2.times do
    school.courses.create!(
      name: Faker::Lorem.words(number: 2).join(' ').titleize,
      description: Faker::Lorem.paragraph,
      progression_behavior: Course::PROGRESSION_BEHAVIOR_LIMITED,
      progression_limit: 1,
      highlights: [highlights, highlights, highlights, highlights]
    )
  end

  def highlights
    {
      icon: Types::CourseHighlightInputType.allowed_icons.sample,
      title: Faker::Lorem.words(number: 2).join(' ').titleize,
      description: Faker::Lorem.paragraph
    }
  end
end
