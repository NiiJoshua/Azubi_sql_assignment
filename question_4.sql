SELECT COUNT(atx_id) FROM agent_transactions
WHERE when_created BETWEEN '2018-01-01' and '2018-12-31'
GROUP BY when_created;