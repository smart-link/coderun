'use strict'

angular.module 'coderunApp'
.controller 'CourseDetailCtrl', ['$scope', '$stateParams', '$meteor', ($scope, $stateParams, $meteor) ->
    $scope.course = $scope.$meteorObject Courses, $stateParams.courseId
    $scope.images = $meteor.collectionFS(Images, false, Images).subscribe('images');

    $scope.$meteorSubscribe('courses')


    $scope.reset = () ->
        $scope.course.reset()

    $scope.getPhoto = (course) ->
        if course
            return Images.findOne(course.picture).url()

]
