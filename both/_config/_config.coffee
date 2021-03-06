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
		twitter:
			url: 'http://twitter.com/Royal_Arse'
			icon: 'twitter'
		github:
			url: 'http://github.com/DeBraid'
			icon: 'github'
		info:
			url: 'http://cacheflow.ca'
			icon: 'link'
	publicRoutes: ['home']