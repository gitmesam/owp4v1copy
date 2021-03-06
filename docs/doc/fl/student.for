      STRUCTURE /NAME/
	  CHARACTER*20 LAST_NAME
	  CHARACTER*20 FIRST_NAME
	  CHARACTER*1  MIDDLE_INITIAL
      END STRUCTURE

      STRUCTURE /DATE/
	  INTEGER*1 DAY
	  INTEGER*1 MONTH
	  INTEGER*2 YEAR
      END STRUCTURE

      STRUCTURE /PERSON/
	  RECORD /NAME/ NAME
	  RECORD /DATE/ BIRTH_DATE
	  CHARACTER*1 SEX
      END STRUCTURE

      RECORD /PERSON/ STUDENT

      STUDENT%NAME%LAST_NAME = 'Pugsley'
      STUDENT%NAME%FIRST_NAME = 'Elmar'
      STUDENT%NAME%MIDDLE_INITIAL = 'M'
      STUDENT%BIRTH_DATE%DAY = 21
      STUDENT%BIRTH_DATE%MONTH = 11
      STUDENT%BIRTH_DATE%YEAR = 1959
      STUDENT%SEX = 'M'

      PRINT *, STUDENT

      END
