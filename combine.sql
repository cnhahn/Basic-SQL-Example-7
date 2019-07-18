BEGIN;

UPDATE Payments
SET amountPaid = P.amountPaid + NP.amountPaid 
FROM NewPayments NP, Payments P
WHERE P.taxpayerID = NP.taxpayerID
    AND P.datePaid = NP.datePaid;


INSERT INTO Payments(taxpayerID, datePaid, amountPaid)
SELECT DISTINCT NP.taxpayerID, NP.datePaid, NP.amountPaid 
FROM NewPayments NP, Payments P
WHERE NP.taxpayerID NOT IN (SELECT taxpayerID
                            FROM Payments)
    AND NP.datePaid NOT IN (SELECT datePaid
                            FROM Payments);

COMMIT;