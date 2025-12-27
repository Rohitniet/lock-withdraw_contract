<h1>🔒 Lock–Withdraw ERC20 Smart Contract</h1>

<p>
A simple Ethereum smart contract system written in Solidity that allows users to
<b>deposit (lock)</b> and <b>withdraw</b> ERC20 tokens.
This project demonstrates core Solidity and ERC20 interaction concepts and is suitable
as an <b>internship / learning project</b>.
</p>

<hr/>

<h2>📌 Overview</h2>

<ul>
  <li><b>Newt.sol</b> – Custom mintable ERC20 token</li>
  <li><b>lock.sol</b> – Lock & withdraw contract</li>
  <li><b>TestContract.sol</b> – Foundry test cases</li>
</ul>

<p>
The lock contract uses the ERC20 <code>approve</code> and <code>transferFrom</code> pattern
to safely move tokens from users into the contract.
</p>

<hr/>

<h2>🚀 Features</h2>

<ul>
  <li>ERC20 token deposit (lock)</li>
  <li>User-specific balance tracking</li>
  <li>Total locked token tracking</li>
  <li>ERC20 allowance verification</li>
  <li>Withdraw deposited tokens</li>
  <li>Tested using Foundry</li>
</ul>

<hr/>

<h2>📁 Project Structure</h2>

<pre>
lock-withdraw_contract/
├── src/
│   ├── Newt.sol
│   └── lock.sol
├── test/
│   └── TestContract.sol
├── foundry.toml
└── README.md
</pre>

<hr/>

<h2>⚙️ How It Works</h2>

<h3>1️⃣ Deploy ERC20 Token</h3>

<pre>
Newt token = new Newt("pip", "pt");
</pre>

<h3>2️⃣ Deploy Lock Contract</h3>

<pre>
lock locker = new lock(address(token));
</pre>

<h3>3️⃣ Deposit Tokens</h3>

<p>User must approve the lock contract before depositing.</p>

<pre>
token.approve(address(locker), amount);
locker.deposite(amount);
</pre>

<h3>4️⃣ Withdraw Tokens</h3>

<pre>
locker.withdraw();
</pre>

<p>
Tokens are transferred back to the caller based on their deposited balance.
</p>

<hr/>

<h2>🧪 Running Tests</h2>

<p>This project uses <b>Foundry</b> for testing.</p>

<pre>
forge test
</pre>

<p>
Tests cover:
</p>

<ul>
  <li>Token minting</li>
  <li>Approval and deposit flow</li>
  <li>Withdraw functionality</li>
</ul>

<hr/>

<h2>🧠 Learning Outcomes</h2>

<ul>
  <li>Understanding ERC20 approve & transferFrom</li>
  <li>Smart contract state management</li>
  <li>Foundry-based Solidity testing</li>
  <li>Basic lock–withdraw contract design</li>
</ul>

<hr/>

<h2>⚠️ Security Notes</h2>

<p>
This project is for <b>learning purposes</b>.
It does not include advanced security features such as:
</p>

<ul>
  <li>Reentrancy protection</li>
  <li>Admin-controlled
