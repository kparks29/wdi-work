# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Board.destroy_all

b = Board.create(x_turn: true, name: 'game')
r1 = b.rows.create()
r2 = b.rows.create()
r3 = b.rows.create()

r1.cells.create(val: "")
Cell.create(val: "", row:r1)
Cell.create(val: "", row:r1)

(1..3).each do |num|

	r2.cells.create(val: "")

end

(1..3).each do |num|

	r3.cells.create(val: "")

end