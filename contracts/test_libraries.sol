// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import '@openzeppelin/contracts/utils/Strings.sol';

contract libraries {


    function concatener(string memory _stringA, uint _nombreA, uint _nombreB) external pure returns(string memory) {
        string memory res = string(abi.encodePacked(_stringA, Strings.toString(_nombreA), Strings.toString(_nombreB)));
        return res;
    }

}