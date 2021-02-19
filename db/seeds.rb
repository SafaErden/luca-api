# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(username: "Aidan Wills")
u = User.create(username: "Liya Carver")
u = User.create(username: "Elaina Oneill")
u = User.create(username: "Rosemary Wise")
u = User.create(username: "Ellice Flynn")
u = User.create(username: "Gerard Deleon")
u = User.create(username: "Hayley Baldwin")

q = User.find(1).questions.build(title: "Lorem ipsum dolor sit amet", body: "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l")
q.save
q = User.find(2).questions.build(title: "bore et dolore magna aliqua. Ut e", body: "ad minim veniam, quis nostrud exercitation ullamco laboris nis")
q.save
q = User.find(3).questions.build(title: "t aliquip ex ea commodo consequat. D", body: " aute irure dolor in reprehenderit in volupt")
q = User.find(4).questions.build(title: "t esse cillum dolore eu fugiat nulla pariatur. Ex", body: "ur sint occaecat cupidatat non proident, sunt")
q.save
q = User.find(5).questions.build(title: "ui officia deserunt mollit anim id est lab", body: "Sed ut perspiciatis unde omnis iste natus error sit vo")
q.save
q = User.find(6).questions.build(title: "tatem accusantium doloremque laudantium, totam rem aperiam, eaque ", body: "uae ab illo inventore veritatis et quasi architecto beatae vitae dic")
q.save
q = User.find(7).questions.build(title: "sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia conseq", body: "ores eos qui ratione voluptatem sequi nesciunt. Neque porr")
q.save
q = User.find(1).questions.build(title: " quisquam est, qui dolorem ipsum q", body: "r sit amet, consectetur, adipisci velit, sed quia non numquam eius m")
q.save
q = User.find(2).questions.build(title: "mpora incidunt ut labore et dolore magnam aliquam ", body: "voluptatem. Ut enim ad minima veniam, quis nostrum exercitatione")
q.save
q = User.find(3).questions.build(title: "ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commo", body: "equatur? Quis autem vel eum iure reprehenderit qui i")
q.save
q = User.find(4).questions.build(title: "spiciatis unde omnis iste natus error sit voluptatem acc", body: "spiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab ")
q.save
q = User.find(5).questions.build(title: "or sit amet, consectetur, adipisci velit,", body: "ia non numquam eius modi tempora incidunt ut labore et dolore magna")
q.save
q = User.find(6).questions.build(title: "uam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercit", body: " ullam corporis suscipit laboriosam, nisi")
q.save
q = User.find(7).questions.build(title: "iquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea ", body: "olestiae consequatur, vel illum qui dolorem eum fugiat quo ")
q.save
q = User.find(1).questions.build(title: "t vero eos et accusamus et iusto odio dignissimo", body: "imus qui blanditiis praesentium voluptatum deleniti atq")
q.save