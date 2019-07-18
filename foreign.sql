
ALTER TABLE IRSagents
ADD CONSTRAINT taxpayerID
FOREIGN KEY (taxpayerID) REFERENCES Individuals(taxpayerID);

ALTER TABLE Delinquents
ADD CONSTRAINT IRSagentID
FOREIGN KEY (IRSagentID) REFERENCES IRSagents(IRSagentID);

ALTER TABLE Delinquents
ADD CONSTRAINT collectionAgencyID
FOREIGN KEY (collectionAgencyID) REFERENCES Businesses(taxpayerID);
