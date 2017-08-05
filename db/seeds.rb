# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

room_1 = Room.create(id: 1, name: '11B-060', floor: 11, format: 'Office')
room_2 = Room.create(id: 2, name: '11B-055', floor: 11, format: 'Small Meeting Room')
room_3 = Room.create(id: 3, name: '11D-163', floor: 11, format: 'Medium Meeting Room')
room_4 = Room.create(id: 4, name: '11D-161', floor: 11, format: 'Large Meeting Room')

Fixture.create(id: 1, asset: 'TV-001', classification: 'Screen', room: room_1)
Fixture.create(id: 2, asset: 'JA-004', classification: 'Jabra', room: room_1)
Fixture.create(id: 3, asset: 'TB-011', classification: 'Table', room: room_1)
Fixture.create(id: 4, asset: 'TB-012', classification: 'Table', room: room_2)
Fixture.create(id: 5, asset: 'TB-013', classification: 'Table', room: room_3)
Fixture.create(id: 6, asset: 'WB-001', classification: 'Whiteboard', room: room_3)
Fixture.create(id: 7, asset: 'TB-014', classification: 'Table', room: room_4)
Fixture.create(id: 8, asset: 'TV-002', classification: 'Screen', room: room_4)


