// contracts/BoxV2.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BoxV3 {
    uint256 private _value;
    uint256 private _previousValue;

    // Emitted when the stored value changes
    event ValueChanged(uint256 value);

    function initializer() public{
        _previousValue = _value;
    }

    // Stores a new value in the contract
    function store(uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // Reads the last stored value
    function retrieve() public view returns (uint256) {
        return _value;
    }

    // Reads the last stored value
    function retrievePrevious() public view returns (uint256) {
        return _previousValue;
    }


    // Increments the stored value by 1
    function increment() public {
        _value = _value + 1;
        emit ValueChanged(_value);
    }

    function decrement() public {
        _value = _value -1;
        emit ValueChanged(_value);
    }
}