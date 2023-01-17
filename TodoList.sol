pragma solidity ^0.8.3;
// SPDX-License-Identifier: MIT

contract TodoList{
    //Todo struct that contains text and completed boolean.
    struct Todo{
        string text;
        bool completed;
    }

    //An array of 'Todo' structs
    Todo[] public todos;

    //create Todo and push the todos
    function create(string calldata _text)external{
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }

    // Updates the text of the struct whose index is given
    function updateText(uint _index, string calldata _text)external{
        todos[_index].text = _text;
    }

    // Toggle the completed boolean of the struct whose index is given
    function toggleCompleted(uint _index) external{
        todos[_index].completed = !todos[_index].completed;
    }

}