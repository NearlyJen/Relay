10.times { Athlete.create!(username: Faker::Name.first_name, email: Faker::Internet.email, age: 14)}

Interval.create!(distance: 100, intensity: 90, interval_time: 300, training_set_id: 1)
Interval.create!(distance: 400, intensity: 90, interval_time: 300, training_set_id: 2)
Interval.create!(distance: 1600, intensity: 85, interval_time: 600, training_set_id: 3)

EventGroup.create!(name: "sprint")
EventGroup.create!(name: "middle-distance")
EventGroup.create!(name: "long-distance")
EventGroup.create!(name: "hurdles")

AthleteGroup.create!(athlete_id: 1, event_group_id: 1)
AthleteGroup.create!(athlete_id: 1, event_group_id: 4)
AthleteGroup.create!(athlete_id: 2, event_group_id: 1)
AthleteGroup.create!(athlete_id: 3, event_group_id: 2)
AthleteGroup.create!(athlete_id: 4, event_group_id: 2)
AthleteGroup.create!(athlete_id: 5, event_group_id: 3)
AthleteGroup.create!(athlete_id: 6, event_group_id: 3)
AthleteGroup.create!(athlete_id: 7, event_group_id: 2)
AthleteGroup.create!(athlete_id: 7, event_group_id: 3)
AthleteGroup.create!(athlete_id: 8, event_group_id: 4)
AthleteGroup.create!(athlete_id: 9, event_group_id: 2)
AthleteGroup.create!(athlete_id: 9, event_group_id: 4)
AthleteGroup.create!(athlete_id: 10, event_group_id: 2)
AthleteGroup.create!(athlete_id: 10, event_group_id: 4)

Event.create!(name: "100m", event_group_id: 1)
Event.create!(name: "200m", event_group_id: 1)
Event.create!(name: "400m", event_group_id: 2)
Event.create!(name: "800m", event_group_id: 2)
Event.create!(name: "1600m", event_group_id: 3)
Event.create!(name: "3200m", event_group_id: 3)
Event.create!(name: "100m High Hurdles", event_group_id: 4)
Event.create!(name: "400m Intermediate Hurdles", event_group_id: 4)

AthleteEvent.create!(athlete_id: 1, event_id: 1, personal_record: 12.34)
AthleteEvent.create!(athlete_id: 1, event_id: 2, personal_record: 25.67)
AthleteEvent.create!(athlete_id: 1, event_id: 7, personal_record: 13.34)
AthleteEvent.create!(athlete_id: 2, event_id: 1, personal_record: 13.34)
AthleteEvent.create!(athlete_id: 2, event_id: 2, personal_record: 27.34)
AthleteEvent.create!(athlete_id: 3, event_id: 3, personal_record: 62.34)
AthleteEvent.create!(athlete_id: 3, event_id: 4, personal_record: 130.34)
AthleteEvent.create!(athlete_id: 4, event_id: 3, personal_record: 56.34)
AthleteEvent.create!(athlete_id: 4, event_id: 4, personal_record: 120.34)
AthleteEvent.create!(athlete_id: 5, event_id: 5, personal_record: 306.34)
AthleteEvent.create!(athlete_id: 5, event_id: 6, personal_record: 700.34)
AthleteEvent.create!(athlete_id: 6, event_id: 5, personal_record: 294.34)
AthleteEvent.create!(athlete_id: 6, event_id: 6, personal_record: 586.34)
AthleteEvent.create!(athlete_id: 7, event_id: 4, personal_record: 135.34)
AthleteEvent.create!(athlete_id: 7, event_id: 5, personal_record: 321.34)
AthleteEvent.create!(athlete_id: 8, event_id: 7, personal_record: 14.34)
AthleteEvent.create!(athlete_id: 8, event_id: 8, personal_record: 45.34)
AthleteEvent.create!(athlete_id: 9, event_id: 3, personal_record: 72.34)
AthleteEvent.create!(athlete_id: 9, event_id: 8, personal_record: 83.34)
AthleteEvent.create!(athlete_id: 10, event_id: 3, personal_record: 54.34)
AthleteEvent.create!(athlete_id: 10, event_id: 7, personal_record: 12.34)
AthleteEvent.create!(athlete_id: 10, event_id: 8, personal_record: 44.34)

Session.create!(name: "Thursday sprints", description: "Speed and techical work", event_group_id: 1)
Session.create!(name: "Thursday mid", description: "Form work and endurance", event_group_id: 2)
Session.create!(name: "Thursday distance", description: "tempo day", event_group_id: 3)

TrainingSet.create!(name: "Repeat fast 100s", description: "Fast", training_type: "Sprint speed", timed: true, interval_repetitions: 5, session_id: 1)
TrainingSet.create!(name: "Mid distance endurance", description: "Form", training_type: "speed enurance", timed: true, interval_repetitions: 5, session_id: 2)
TrainingSet.create!(name: "Distance tempo", description: "Consistency", training_type: "tempo", timed: true, interval_repetitions: 3, session_id: 3)

AssignedSet.create!(athlete_id: 1, training_set_id: 1)
AssignedSet.create!(athlete_id: 2, training_set_id: 1)
AssignedSet.create!(athlete_id: 3, training_set_id: 2)
AssignedSet.create!(athlete_id: 4, training_set_id: 2)
AssignedSet.create!(athlete_id: 5, training_set_id: 3)
AssignedSet.create!(athlete_id: 6, training_set_id: 6)
AssignedSet.create!(athlete_id: 7, training_set_id: 2)
AssignedSet.create!(athlete_id: 7, training_set_id: 3)
AssignedSet.create!(athlete_id: 8, training_set_id: 1)
AssignedSet.create!(athlete_id: 9, training_set_id: 1)
AssignedSet.create!(athlete_id: 10, training_set_id: 2)
AssignedSet.create!(athlete_id: 10, training_set_id: 1)

