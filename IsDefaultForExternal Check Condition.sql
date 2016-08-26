

DECLARE @IsDefaultForExternal bit = NULL
SET @IsDefaultForExternal=1


IF NOT (((SELECT COUNT(*) from dbo.tblTitleMaster where IsDefaultForExternal=@IsDefaultForExternal) > 0) AND @IsDefaultForExternal=1)
BEGIN
print 'INSERT'
END
ELSE
BEGIN
 PRint 'DONT INSERT'
END


--SELECT COUNT(*) from dbo.tblTitleMaster where IsDefaultForExternal=1