pragma solidity ^0.8.0;

contract RequireAssertRevert {
    uint256 public x;

    function setX(uint256 _x) public {
        require(_x > 0, "Value should be greater than 0");
        assert(_x != x);
        x = _x;
    }

    function setXWithRevert(uint256 _x) public {
        if (_x == x) {
            revert("Value is the same as current value");
        }
        x = _x;
    }
}
