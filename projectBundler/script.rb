require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './ap/permissions'
require './pry/propina_script'

admin_personal_info ={'name'=>'Eduardo', 'last_name'=>'Rubio', 'birth_year'=>1982}
admin_contact_info = {'email' =>'edurubio@gmail.com', 'mob'=>'4444509619'}
admin_role = Role.new('user','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info,admin_role)

ap admin_personal_info
ap admin_contact_info

ap admin_role.methods - Object.methods

put tip(80)

save_new_user('Jorge Luis','sanchezjaimejorgaluis@gmail.com', 1994)
users = save_new_user('Jorge Luis', 'sanchezjaimejorgeluis@gnail.com',2016)
ap users


