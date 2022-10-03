PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE books (
book_id integer primary key autoincrement,
title text not null,
author text not null,
genre text,
link text
);
INSERT INTO books VALUES(1,'Atomic Habits','James Clear',NULL,NULL);
INSERT INTO books VALUES(2,'Decisive','Dan & Chip Heath',NULL,NULL);
INSERT INTO books VALUES(3,'War of Art','Steven Pressfield',NULL,NULL);
INSERT INTO books VALUES(4,'Letters from a Stoic','Seneca',NULL,NULL);
INSERT INTO books VALUES(5,'10% Happier','Dan Harris',NULL,NULL);
INSERT INTO books VALUES(6,'The Five Love Languages','Gary Chapman',NULL,NULL);
INSERT INTO books VALUES(7,'The Life-Changing Magic of Tidying Up','Marie Kondo',NULL,NULL);
INSERT INTO books VALUES(8,'Can''t Hurt Me','David Goggins',NULL,NULL);
INSERT INTO books VALUES(9,'Getting Everything You Can Out of All You''ve Got: 21 Ways You Can Out-Think, Out-Perform, and Out-Earn the Competition','Jay Abraham',NULL,NULL);
INSERT INTO books VALUES(10,'Growth Hacker Marketing: A Primer on the Future of PR, Marketing, and Advertising','Ryan Holiday',NULL,NULL);
INSERT INTO books VALUES(11,'The 22 Immutable Laws of Marketing: Violate Them at Your Own Risk!','Al Ries',NULL,NULL);
INSERT INTO books VALUES(12,'No B.S. Direct Marketing: The Ultimate No Holds Barred Kick Butt Take No Prisoners Direct Marketing for Non-Direct Marketing Businesses','Dan S. Kennedy',NULL,NULL);
INSERT INTO books VALUES(13,'No B.S. Guide to Direct Response Social Media Marketing: The Ultimate No Holds Barred Guide to Producing Measurable, Monetizable Results with Social Media Marketing','Dan S. Kennedy',NULL,NULL);
INSERT INTO books VALUES(14,'The Thank You Economy','Gary Vaynerchuk',NULL,NULL);
INSERT INTO books VALUES(15,'Jab, Jab, Jab, Right Hook','Gary Vaynerchuk',NULL,NULL);
INSERT INTO books VALUES(16,'Crush It!','Gary Vaynerchuk',NULL,NULL);
INSERT INTO books VALUES(17,'Crushing It!','Gary Vaynerchuk',NULL,NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('books',17);
COMMIT;
