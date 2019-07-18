SELECT D.taxpayerID, TD.debt, PC.credit
FROM PaymentCredits PC, TaxDebts TD, Delinquents D
WHERE D.taxpayerID = PC.taxpayerID AND D.taxpayerID = TD.taxpayerID AND PC.taxpayerID = TD.taxpayerID;

DELETE FROM TaxReturns
WHERE (taxpayerID = 112 AND taxYear = 2016) OR (taxpayerID = 116 AND taxYear = 2017);