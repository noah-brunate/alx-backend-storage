-- script creates an index idx_name_first_score
-- on table names and the first letter of name and the score

CREATE UNIQUE INDEX idx_name_first_score
ON names (name, score)
WHERE name LIKE '_%';
