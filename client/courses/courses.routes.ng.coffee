'use strict'

angular.module 'coderunApp'
.config ['$stateProvider', ($stateProvider) ->
    $stateProvider
    .state 'courses-list',
        url: '/'
        templateUrl: 'client/courses/courses-list.view.html'
        controller: 'CoursesListCtrl'
    .state 'course-detail',
        url: '/courses/:courseId'
        templateUrl: 'client/courses/course-detail.view.html'
        controller: 'CourseDetailCtrl'
]
