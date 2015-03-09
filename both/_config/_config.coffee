@Config =
	name: 'Jetfile'
	title: 'Smart maintenance reports. Fast.'
	subtitle: 'Get back to work.'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: 'Coming soon...'
	about: 'Coming soon...'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: 'http://facebook.com/benjaminpeterjones'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/BenPeterJones'
			icon: 'twitter'
		github:
			url: 'http://github.com/yogiben'
			icon: 'github'
		info:
			url: 'http://meteorfactory.io'
			icon: 'link'
	publicRoutes: ['home']