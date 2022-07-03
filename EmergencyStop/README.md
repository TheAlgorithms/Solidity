# Emergency Stop pattern

This model incorporates the possibility of suspending the execution of all the functions in the contract in the event of a problem. Since contracts are immutable once deployed; if there are bugs in the contract, the `pause` feature can be activated to prevent further damage.

The emergency pause functionality must be under the control of the owner or an authorized address. **The emergency shutdown model** should be avoided at all costs as it goes against the spirit of decentralization, but in cases where centralized control is required, it could be a valid model to include in your contract.

## Contract informations

Access modifiers are used to restrict access. The contract has a function called `depositEther` which can only be called when the function is not in a paused state. The pause state can be activated by the contract owner and when the contract is paused users can no longer deposits ether.

The contract also has an `emergencyWithdrawal` function that can be triggered by the owner if the contract is paused as a result of bugs in the code and the ether in the contract can safely be transferred elsewhere.

## When to use

- You want the ability to pause the contract as a result of unwanted situation
- In case of failure you want the ability to stop state corruption.
- You are a centralized entity.
