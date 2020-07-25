WITH NetWithdrawers As
(SELECT COUNT(agent_id) AS NetWithdrawers FROM agent_transactions 
HAVING COUNT(amount) IN 
(SELECT COUNT(amount) FROM agent_transactions WHERE amount > -1 AND amount !=0 
HAVING COUNT(amount) > (SELECT COUNT(amount)
FROM agent_transactions WHERE amount < 1 AND amount !=0))) 
SELECT NetWithdrawers FROM AgentWithdrawers;