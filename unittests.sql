
INSERT INTO IRSagents(IRSagentID, taxpayerID, jobLevel, active)
VALUES('A4DV56', 120, 3, TRUE);

INSERT INTO Delinquents(taxpayerID, IRSagentID, collectionAgencyID)
VALUES(113, 'A4DV53', 107);

INSERT INTO Delinquents(taxpayerID, IRSagentID, collectionAgencyID)
VALUES(114, 'KL98O4', 106);

UPDATE Payments
SET amountPaid = -1;
UPDATE Payments
SET amountPaid = 100;

UPDATE Businesses
SET lastDateFiled = '11/10/2010', lastDatePaid = '11/10/2017';
UPDATE Businesses
SET lastDateFiled = '11/10/2018', lastDatePaid = '11/10/2017';

UPDATE IRSagents
SET jobLevel = NULL, active = TRUE;
UPDATE IRSagents
SET jobLevel = NULL, active = NULL; 

UPDATE Individuals
SET taxpayerID = 123, spouseID = 123;
UPDATE Individuals
SET taxpayerID = 101, spouseID = 102
WHERE address = 'Ap 544-8986 Massa Rd.';
