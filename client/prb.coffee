Lists = new Meteor.Collection "lists"


Template.main.events =

  'click button#add_task_button' : () ->

    Meteor.apply('metty')

    Accounts.createUser(username: "tmp_username", password: "tmp_password")

    Lists.insert(name: "Untitled", datecreated: new Date())

    return false # prevents form from submitting
