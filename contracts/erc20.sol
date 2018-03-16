pragma solidity ^0.4.17;


// Token standard API
// https://github.com/ethereum/EIPs/issues/20
contract ERC20Events {
    event Transfer( address indexed from, address indexed to, uint256 value);
    event Approval( address indexed owner, address indexed spender, uint256 value);
}


contract ERC20 is ERC20Events {
    function totalSupply() public view returns (uint256 supply);
    function balanceOf( address who ) public  view returns (uint256 value);
    function allowance( address owner, address spender ) public view returns (uint256 _allowance);

    function transfer( address to, uint256 value) public returns (bool ok);
    function transferFrom( address from, address to, uint256 value) public returns (bool ok);
    function approve( address spender, uint256 value ) public returns (bool ok);

}
