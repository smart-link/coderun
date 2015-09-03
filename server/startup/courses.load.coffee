Meteor.startup ->
  if Courses.find().count() == 0
    courses = []
    courses.forEach (course) ->
      Courses.insert course
