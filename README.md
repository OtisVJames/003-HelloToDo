# The purpose of this project is to build a decentralized To-Do List using a smart contract written in Solidity.

# This contract allows users to:
- Add tasks with descriptions.
- Mark tasks as completed.
- View the list of all tasks.

By storing tasks on the blockchain, we ensure transparency, immutability, and decentralized access, which are core principles of Web3 applications.

## 
# Features
- Task Creation | Users can add a new task with a description
- Task Completion | Users can mark a task as completed.
- View all tasks | Anyone can retrieve the entire list of tasks.
- Event logging | Logs actions like task creation and completion for external liserners (frontend, DApps)
##

# How It Works
# 1. User adds a task
- Calls: addTask("Buy Milk")  ~ Example
- New task is stored with [isCompleted = false]
- TaskAdded event is emmited

# 2. User marks a task as completed
- Calls: markCompleted(0)
- Check the task ID is valid
- Sets: [ isCompleted = true ]

# 3. User views tasks
- Calls: getTasks()
- Returns all current tasks with their statuses

## Potential Frontend Integration
- Use a framework like React with Ethers.js or Web3.js to interact with:
   - addTask()
   - markCompleted()
   - getTasks()
   - Display real-time updates using the emitted events.

## Possible Extensions
- Task deletion
- Editing task descriptions
- Task deadlines
- Task prioritization
- Multi-user support (store tasks per address)
- Frontend UI with Web3 wallet support
