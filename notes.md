# What is CRUD 

    Create
    Read 
    Update
    Delete/Destroy

## Sinatra VS Rails

 ### Sinatra
    - Routes defined in our controllers

### Rails 
    - config/routes.rb
    - HUGE separation concern 

### Files that we're going to do most coding in:

    - app => controller || views || models 
    - config/routes.rb
    - db

# CRUD Flow => 
    - user requests a route, matches route with controller/action and executes logic
    - action matches view page and renders content 

## Create 
    - Need 2 routes - one shows the form, the other receives the form
    - get request/post request 
    - new/create actions in controller
    - need a new view that renders form

## Read 
    - Need 2 routes => index/show 
    - index => shows all the objects of that class, all items 
    - show => a particular object, i.e. item with id 1
    - show page is a dynamic route meaning that content changes based on object we are querying

## Update
    - edit/patch total of 2 routes
    - edit => render our edit form
    - patch => process our edit form 
    - dynamic => editing individual object 
    
## Strong params
    - whitelists attributes for mass assignment upon initialization 
    - defined as a private method
    - secures our data from being hacked while mass assigning 
    - `params.require(:item).permit(attributes should be listed here)`


