ALTER TABLE Payments
ADD CONSTRAINT positive_payments
CHECK(amountPaid >= 0);

ALTER TABLE Businesses
ADD CONSTRAINT check_date
CHECK(lastDateFiled >= lastDatePaid);

ALTER TABLE IRSagents
ADD CONSTRAINT check_level_active
CHECK((jobLevel IS NULL AND active IS NULL) OR jobLevel IS NOT NULL);

ALTER TABLE Individuals
ADD CONSTRAINT check_ID
CHECK(taxpayerID <> spouseID);
