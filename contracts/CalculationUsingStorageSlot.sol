// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.4;

import "./lib/Operation.sol";

/**
 * Contract provides methods to operate on two variables
 */
contract CalculationUsingStorageSlot {

    /**
     * @notice It calls library and updates value of `a`. 
     * @param _a new value of `a`.
     */
    function updateA(uint256 _a) external {
        Operation.changeValueA(_a);
    }

    /**
     * @notice It calls library and returns value of `a` stored in the storage. 
     * @return uint256 value of `a`.
     */
    function getA() external view returns(uint256) {
        return Operation.getA();
    }

    /**
     * @notice It calls library and updates value of `b`. 
     * @param _b new value of `b`.
     */
    function updateB(uint256 _b) external {
        Operation.changeValueB(_b);
    }

    /**
     * @notice It calls library and returns value of `b` stored in the storage. 
     * @return uint256 value of `b`.
     */
    function getB() external view returns(uint256) {
        return Operation.getB();
    }
 
    /**
     * @notice It calls library and sum of `a` and `b`. 
     * @return uint256 summation of `a` and `b` in storage.
     */
    function calculate() external view returns(uint256) {
        return Operation.calculateSum();
    } 

}