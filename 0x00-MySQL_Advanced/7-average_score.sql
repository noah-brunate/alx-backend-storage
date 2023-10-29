-- script creates a stored procedure ComputeAverageScoreForUser
-- that computes and stores the average score for a student.

DELIMITER $$;
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
	SET @user_avg = (SELECT AVG(score)
			FROM corrections
			WHERE user_id = user_id);
	UPDATE users
	SET average_score = @user_avg
	WHERE id = user_id;
END;$$
DELIMITER ;
