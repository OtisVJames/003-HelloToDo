// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract ToDoList {
    struct Task {
        string description;
        bool isCompleted;
    }

    Task[] public tasks;
    
    event TaskAdded(uint taskId, string description);
    event TaskCompleted(uint taskId);

    function addTask(string memory _description) public {
        tasks.push(Task(_description, false));
        emit TaskAdded(tasks.length -1, _description);
    }

    function markCompleted(uint _taskId) public {
        require(_taskId < tasks.length, "Invalid task ID");
        tasks[_taskId].isCompleted = true;
        emit TaskCompleted(_taskId);
    }

    function getTasks() public view returns (Task[] memory) {
        return tasks;
    }
}

