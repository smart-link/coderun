@Courses = new Mongo.Collection('courses')

Schemas = {}
Schemas.Courses = new SimpleSchema
    name:
        type: String
        max: 200
        label: '강좌이름'
    desc:
        type: String
        label: '강좌소개'

    picture:
        type: String
        autoform:
            afFieldInput:
                type: 'fileUpload'
                collection: 'Images'

Courses.attachSchema(Schemas.Courses)
