Lists = new Meteor.Collection "lists"

Lists.allow
	insert: (userId, list) ->

		return true

Accounts.onCreateUser (options, user) ->
	console.log "On create user. options:", options, " user:", user

Meteor.methods
	metty: () ->
		console.log "In Meteor.method."
