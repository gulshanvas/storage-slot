// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.4;

/**
 * It operates and provides manipulation methods on storage.
 */
library Operation {

    // Storage slot to be used for operation
    bytes32 public constant BLIV_STORAGE = bytes32(keccak256("Bliv.Testing"));

    struct Uint256Slot {
        uint256 a;
        uint256 b;
    }

    /**
     * @notice It provides storage slot.
     * @param slot Hash of the storage slot for which reference is needed. 
     */
    function getUint256Slot(bytes32 slot) private pure returns (Uint256Slot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @notice Updates the value of `a` at storage slot.
     * @param _a New value of `a`. 
     */
    function changeValueA(uint256 _a) internal  {

        getUint256Slot(BLIV_STORAGE).a = _a;
    }

    /**
     * @notice Provides value of `a` in the storage slot.
     * @return uint256 Value of `a`. 
     */
    function getA() internal view returns (uint256) {

        return getUint256Slot(BLIV_STORAGE).a;
    }


    /**
     * @notice Updates the value of `b` at storage slot.
     * @param _b New value of `b`. 
     */
    function changeValueB(uint256 _b) internal  {
        getUint256Slot(BLIV_STORAGE).b = _b;
    }

    /**
     * @notice Provides value of `b` in the storage slot.
     * @return uint256 Value of `b`. 
     */
    function getB() internal view returns (uint256) {

        return getUint256Slot(BLIV_STORAGE).b;
    }

    /**
     * @notice Calculates sum of `a` and `b` values stored at storage slot.
     * @return uint256 Sum of `a` and `b`
     */
    function calculateSum() internal view returns(uint256) {
        uint256 a = getUint256Slot(BLIV_STORAGE).a;
        uint256 b = getUint256Slot(BLIV_STORAGE).b;

        return a + b;
    }

}
