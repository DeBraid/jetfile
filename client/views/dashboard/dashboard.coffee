AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)

Template.dashboard.helpers 
  currentUser: ->
    Meteor.user()