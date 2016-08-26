DECLARE @IsDefaultForExternal bit = NULL
        ,@Title nvarchar(500)
SET @IsDefaultForExternal=1
SET @Title = 'Contractor1'

IF (((SELECT COUNT(*) from dbo.tblTitleMaster where IsDefaultForExternal=@IsDefaultForExternal) > 0) AND @IsDefaultForExternal=1)
BEGIN
      IF (@Title = (Select Title from dbo.tblTitleMaster where Title=@Title) AND 
	      @IsDefaultForExternal = (Select IsDefaultForExternal from dbo.tblTitleMaster where Title =@Title))
	  print 'UPDATE'
	  ELSE
	  Print 'DONT UPDATE'
END
ELSE
BEGIN
 PRint 'UPDATE'
END


