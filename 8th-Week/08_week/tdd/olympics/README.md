#TDD -- Model Specs -- Olympics

###What we're working with

- We made a new rails app called *olympics* that you can pull down
- There's an empty model called *Athlete* that will be our focus in class
- Athletes have the following fields:
	- First name (first_name) *String*
	- Middle name (middle_name) *String*
	- Last name (last_name) *String*
	- Country (country) *String*
	- Sport (sport) *String*
	- Age (age) *Integer*

###*Validations*------------------

###What we'll do together

- Talk about *@valid_attributes* 
- Write tests to look for missing (nil) attributes
- FAIL!
- Write code to pass those tests (*validates* statements)

###What you'll do on your own

- Write tests to look at another aspect of validation: *numericality*
- Test the *age* field
- FAIL!
- Write code to pass those tests

###*Instance Methods*------------------
	
###What we'll do together 

- Walk through a model spec that tests the instance method *name* of class *Athlete*
- *name* is meant to return the first and last name of an Athlete together
- Sample: *Shaun White*
- Write tests
- FAIL!
- Write code to pass those tests


###What you'll do on your own 

- Our goal is a working instance method *full_name* of class *Athlete*
- You'll want to address two contexts: middle name present, middle name not present
- Sample of middle name present: *Shaun R. White*
- Sample of middle name not present: *Lolo Jones*
- Write tests
- FAIL!
- Show an instructor your specs, then get started on code to make them pass
- Write code to pass those tests
	