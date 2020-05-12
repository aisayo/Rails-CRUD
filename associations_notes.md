# Associations

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