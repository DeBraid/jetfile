Accounts.onCreateUser (options, user) ->
	profileImageUrl = undefined
	user.profile = user.profile or {}
	
	if profileImageUrl
		picture = new FS.File()
		attachData = Meteor.wrapAsync picture.attachData, picture

		attachData profileImageUrl
		picture.name('picture' + user._id)
		profilePicture = ProfilePictures.insert picture
		user.profile = 
			picture: profilePicture._id
	else
		email = user.emails?[0]?.address or ''
		url = Gravatar.imageUrl email
		user.profile =
			picture: url
	user