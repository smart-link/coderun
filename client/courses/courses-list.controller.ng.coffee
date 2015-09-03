'use strict'

angular.module 'coderunApp'
.controller 'CoursesListCtrl', ['$scope', '$meteor', ($scope, $meteor) ->
    $scope.courses = $scope.$meteorCollection Courses
    $scope.images = $meteor.collectionFS(Images, false, Images).subscribe('images');

    $scope.$meteorSubscribe('courses')

    $meteor.session 'coursesCounter'
    .bind $scope, 'page'

    $scope.save = () ->
        if $scope.form.$valid
            $scope.courses.save $scope.newCourse
            $scope.newCourse = undefined

    $scope.remove = (course) ->
        $scope.courses.remove course

    $scope.getPhoto = (course) ->
        return Images.findOne(course.picture).url()

]
