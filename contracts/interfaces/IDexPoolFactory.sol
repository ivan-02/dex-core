// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IDexPoolFactory {
    event OwnershipTransfered(address indexed oldOwner, address newOwner);
    event PoolCreated(
        address indexed tokenA,
        address indexed tokenB,
        uint256 indexed fee,
        address pool
    );

    /// @notice The pool"s upgrade admin
    /// @return The owner
    function owner() external view returns (address);

    /// @notice The pool"s upgrade admin
    /// @return The owner
    function pendingOwner() external view returns (address);

    function getPool(
        address tokenA,
        address tokenB,
        uint256 fee
    ) external view returns (address pool);

    function createPool(
        address initialImplementation,
        address tokenA,
        address tokenB,
        uint256 fee
    ) external returns (address pool);

    function transferOwnership(address newOwner, bool direct) external;

    function claimOwnership() external;
}
