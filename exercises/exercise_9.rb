# Exercise 9: Disallow store destruction
# Scenario: For data integrity reasons, we want to restrict users from deleting (aka destroying) store records for stores that have 1 or more employees.

# Step 1: Setup
# Create a new exercise file called exercise_9.rb, add the necessary require_relative calls based on the pattern you see previous exercises following in this project.

# Step 2: Destruction code
# Add the following "driver" code to your new exercise file:


## Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
if @store1.destroy
    puts "Store destroyed! It has #{@store1.employees.size} =/"
else
    puts "Could not destroy store :)"
end

## Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0)
if @empty_store.destroy
    puts "Empty Store destroyed! This is good"
else
    puts "Whoa! Empty store should be destroyable... Not cool!"
end

# Running this exercise you will find that it allows destruction of store1 which does have employees.

# Step 3: Implement restriction
# Register a callback on the Store model that will help you stop the destroy life cycle from taking place in that condition. You'll need to research how to do this!