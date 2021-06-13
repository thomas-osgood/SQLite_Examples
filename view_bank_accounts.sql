/*
Query Name: view_bank_accounts
Author: Thomas Osgood
Description:
	Query designed to display the account id, client name,
	account type, and money available.  This query pulls information
	from the ACCOUNTS, CLIENTS, and ACCOUNT_TYPES tables
	in the BANK database.
*/
SELECT a.account_id,c.first_name,c.last_name,a.money_available,t.acct_type
FROM accounts AS a
INNER JOIN clients AS c
ON (a.client_id = c.client_id)
INNER JOIN account_types AS t
ON (a.acct_type_id = t.acct_type_id);