@Posts = new Meteor.Collection('posts');

Schemas.Posts = new SimpleSchema
	summary:
		type:String
		max: 80

	# name:
	# 	type:String
	# 	max: 60

	# email:
	# 	type:String
	# 	max: 30

	# position:
	# 	type:String
	# 	max: 30

	# department:
	# 	type:String
	# 	max: 30

	location:
    type: String
    optional: true
    autoform:
      type: 'map'
      geolocation: true
      searchBox: true
      autolocate: true

	injury:
		type:Boolean
		label: 'Was there an Injury?'
		autoform:
				type: 'boolean-select'
				trueLabel: 'Yes, someone was hurt.'
				falseLabel: 'No, we\'re all good here.'

	damage:
		type:Boolean
		label: 'Damage to aircraft?'
		autoform:
				type: 'boolean-select'
				trueLabel: 'Yes, I\'ll attach pictures.'
				falseLabel: 'No aircraft damage.'

	description:
		type: String
		autoform:
			rows: 5

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	picture:
		type: String
		optional: true
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Attachments'

	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Posts.attachSchema(Schemas.Posts)