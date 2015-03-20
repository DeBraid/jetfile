AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)

Template.user.helpers 
  currentUser: ->
    console.log Meteor.user()
    Meteor.user()