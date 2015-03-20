AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)

Template.user.helpers 
  currentUser: ->
    Meteor.user()