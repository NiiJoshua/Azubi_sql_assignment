SELECT count(distinct send_money_currency)
FROM transfers
WHERE send_money_currency = 'CFA';