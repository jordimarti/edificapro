# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create(id: 1, name: 'Introducción al Passivhaus para climas cálidos', instructor: 'Micheel Wassouf', description: 'Curso de introducción para entender las bases del estándar Passivhaus', image: 'courses/c01.jpg', price: 5900, start_controller: 'c01', start_action: 'contexto')
Course.create(id: 2, name: 'Auditorías energéticas en edificación', instructor: 'Maria Peralta', description: 'Curso práctico para la realización de auditorías energéticas en los edificios', image: 'courses/c02.jpg', price: 4900, start_controller: 'c02', start_action: 'introduccion')
