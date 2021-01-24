
CREATE FUNCTION tbldispute()
RETURNS TABLE
AS
RETURN
(
SELECT U.FIRST_NAME,U.EMAIL,U.PHONE,D.NAME,D.DESCRIPTION Dispute,P.DESCRIPTION Room FROM DISPUTES D
INNER JOIN USERS U ON U.ID=D.USERID
INNER JOIN PROPERTIES P ON P.ID=D.PROPERTY_ID
)