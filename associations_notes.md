# Associations

## types of associations

- many to one - belongs_to, has many relationship
- one to one - belongs_to, has_one relationship
- many to many - join table, belongs two different objects, has_many, through

- defined in the model


- need a table 
- model class
- routes
- views

## Model: Restaurant

- attributes: name
- belongs_to location
- belongs_to category

## Model: Location

- attributes: city, state, zip code
- Has many restaurants
- Has many categories, through those restaurants

## Model: Category

- attributes: name
- Has many restaurants
- Has many locations through restaurants

## Goals

- aleviate the users experience by associating objects through the form
- going to create a form that creates a restaurant and category it belongs to 
- we need to avoid duplicate categories from being created - custom writers

### the flow

- set associations in models
- define the object in the controller 
- creating the form: can use selections or datalists/autocompletion for associated object
- create a customer reader and writer in model
- modify strong params