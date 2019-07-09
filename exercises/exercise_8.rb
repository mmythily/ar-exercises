# Exercise 8: Employee passwords
# Scenario: We want to be able to give employees a password (string) that is auto-generated when their record is created in the database.

# Step 1: Setup
# Create a new exercise file called exercise_8.rb, add the necessary require_relative calls based on the pattern you see previous exercises following in this project.


# Step 2: Modify Schema
# When working with _real_ Active Record scenarios, much like with Knex, you'll use a migration to mutate the database schema. Since you are already familiar with migrations (and they are the same thing in AR), we don't focus on them at all.
# In order to do solve this problem, we need a new column on employees called password. Go ahead and modify the schema and it is as a string (which really just means varchar in SQL) column to the employees table.


# Step 3: Add a callback
# Let's revisit the goal:
# Before an employee is created, AR should automatically create a random (8 character string) password.
# There are multiple ways to register callbacks in AR, instead of passing in a block, we suggest using the approach where you give it the name of a private method using symbols. Although it results in "more lines of code", it does read better and feels better organized.
# Since the key words here are "before" and "created", you should investigate how to register a before_create callback method on the Employee model.
# The callback method will really just be one line, where it will set self.password (or you could just write password instead) to a random 8 character string.
# You could register this callback above or below your associations or validations. AR doesn't care. That said, we suggest the following order / style for your model definitions so that there is some consistency with them:
# Declare Associations
# Declare Validations
# Register Callback Methods using symbols (method names)
# ... Your regular methods ...
# Private methods (eg: callback code)
# NOTE: The callback method should ideally be a private method and have a descriptive name.

# Can you speak to WHY the callback method should be private? What does that mean? If you're not sure, research and see if you can answer this question.



# Step 4: Verify
# In exercise_8.rb create another employee for an existing store and once created (using save or create) but without specifying a password when creating the record so that it can be auto-created by the model.

# Use puts in the exercise file to print out the password after the record is created to make sure that is working.



# Step 5: Question - What about after_create ?
# If you switch the before_create into an after_create instead, what do we expect will happen? Have a hypothesis and experiment.
# Run your exercise to check your assumption.

# If it does not work, is there a change you can make to the callback method itself to fix it, without reverting back to before_create ?

# Once you get it working with after_create, it's worth asking: Which approach is better. Thoughts?



# Step 6: Question - before_save instead ?
# Similarly, what if you changed the before_create to a before_save? What's the challenge there?

# Read up on the definition or experiment to find out what the result could be.