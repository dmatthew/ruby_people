name 'web'
description 'web'

default_attributes()

run_list(
  'recipe[ruby-web::default]'
)
