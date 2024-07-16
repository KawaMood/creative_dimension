#> pk_cr_di:features/portal/data/_structure
#
# Portal: entry
#   id: int 
#       ID of the feature
#   owner: 4-int array
#        The UUID of the owner (optional)
#   location: entry
#       Location of the feature
#           x: int
#           y: int
#           z: int
#           dimension: string
#   facing: string
#       The cardinal direction the feature faces
#   created_at_gametime: int 
#       The gametime the feature has been placed on
#   variant: string
#       Variant of the portal
#   times_used: int
#       Amount of time the portal has been used to make an entity reach the Creative Dimension