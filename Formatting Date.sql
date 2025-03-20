select * from "bank loan";

UPDATE "bank loan"
SET issue_date = TO_DATE(issue_date, 'DD-MM-YYYY');

UPDATE "bank loan"
SET next_payment_date = TO_DATE(next_payment_date, 'DD-MM-YYYY');

UPDATE "bank loan"
SET last_payment_date = TO_DATE(last_payment_date, 'DD-MM-YYYY');

UPDATE "bank loan"
SET last_credit_pull_date = TO_DATE(last_credit_pull_date, 'DD-MM-YYYY');


ALTER TABLE "bank loan" 
ALTER COLUMN issue_date TYPE DATE USING issue_date::DATE;

ALTER TABLE "bank loan"
ALTER COLUMN next_payment_date TYPE DATE USING next_payment_date::DATE;


ALTER TABLE "bank loan"
ALTER COLUMN last_credit_pull_date TYPE DATE USING last_credit_pull_date::DATE;


ALTER TABLE "bank loan"
ALTER COLUMN last_payment_date TYPE DATE USING last_payment_date::DATE;