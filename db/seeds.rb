# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
annonce = Annonce.create ([
{title: 'René vend un 4x4', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tortor.', price:'400000', creator_id:'45260'},
{title: 'René vend une tondeuse', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum.', price:'20000', creator_id:'45260'},
{title: 'René vend une Gizmondo', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget.', price:'200', creator_id:'45260'},
{title: 'René vend un tricycle', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras congue.', price:'2000', creator_id:'45260'},
{title: 'René vend son corps', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus.', price:'2000000', creator_id:'45260'},
{title: 'René vend le corps de Damien', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus hendrerit.', price:'2', creator_id:'45260'},
])