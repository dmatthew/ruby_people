name 'data'
description 'data'

default_attributes()

run_list(
  'recipe[sc-mongodb::default]'
)
