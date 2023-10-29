-- script creates a function safeDiv
-- that divides (and returns) the first by the
-- second number or returns 0 if the second 
-- number is equal to 0.

CREATE FUNCTION safeDiv(a INT, b INT)
RETURNS FLOAT
BEGIN
	IF @b = 0
		RETURN 0;
	ELSE
		RETURN @a / @b;
	END IF;
END;
