# Create owner instances
felix = Owner.create(name: "Felix Odhiambo")
odhiambo = Owner.create(name: "Odhiambo Felix")

# Create todo instances
todo1 = Todo.create(body: "do some assignment", owner: felix)
todo2 = Todo.create(body: "Finish project", owner: felix)
todo3 = Todo.create(body: "go to church", owner: odhiambo)
todo4 = Todo.create(body: "Go to a date", owner: odhiambo)
