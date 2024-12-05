function balanceOf(address account) public view returns (uint256) {
        uint256 balance = balances[account];
        return balance;
    }modifier noReentrant() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }
    bool locked = false; 
