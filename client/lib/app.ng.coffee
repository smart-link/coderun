angular.module 'coderunApp', [
  'angular-meteor'
  'ui.router'
  'ngFileUpload'
]

onReady = () ->
  angular.bootstrap document, ['coderunApp']

if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady
