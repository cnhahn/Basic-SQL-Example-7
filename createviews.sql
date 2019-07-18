CREATE VIEW TaxDebts AS
SELECT TR.taxpayerID, SUM(TR.taxOwed) AS debt
FROM TaxReturns TR 
GROUP BY taxpayerID
HAVING COUNT(*) >= 4;

CREATE VIEW PaymentCredits AS
SELECT taxpayerID, MAX(datePaid) AS biggestDatePaid, SUM(amountPaid) AS credit
FROM Payments 
GROUP BY taxpayerID
HAVING COUNT(DISTINCT amountPaid) >= 2;

/*check useing these commands should have more then 1 result
SELECT * FROM TaxDebts
SELECT * FROM PaymentCredits*/