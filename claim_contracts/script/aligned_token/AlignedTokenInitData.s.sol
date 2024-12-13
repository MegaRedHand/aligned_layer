// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import {Utils} from "../Utils.sol";

contract AlignedTokenInitData is Script {
    function run(
        address _implementation,
        address _beneficiary1,
        address _beneficiary2,
        address _beneficiary3,
        uint256 _mintAmount
    ) public {
        bytes memory data = Utils.alignedTokenInitData(
            _implementation,
            _beneficiary1,
            _beneficiary2,
            _beneficiary3,
            _mintAmount
        );
        console.logBytes(data);
        vm.writeFile(
            string.concat(
                vm.projectRoot(),
                "/script-out/aligned_token_init_data.hex"
            ),
            vm.toString(data)
        );
    }
}
