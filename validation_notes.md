# Validations 

rails c -s

## what problems does my app currently have

    - bad data 

## what are validations

    - validate the data 
    - ensure bad data doesnt go into the db 
    - conditions need to be met before we even let into our db 
    - class method that we define using a helper method #validates
    - takes in two arguments => validates <attribute>, <hash of options>
    - validates :name, presence: true 

## where do validations live

    - the model, at the top

## what invokes validations

- .create?? .new && .save returns an object || .create! 
- .update
- .valid?
- .save
- .invalid?

# to render or redirect

    - !! render => saves the instance variable !! you want to RENDER
    - redirect ?? new request/ bad convention


# how to tell our user what went wrong? validation errors

    - view page