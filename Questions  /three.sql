
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

Generate the following two result sets:

01. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

02. There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Sample Output

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.

Soltion => 
    select CONCAT(name, "(", SUBSTRING(OCCUPATION,1,1), ")")
    from OCCUPATIONS
    ORDER BY Name ASC;
    select CONCAT("There are a total of", " ", Count(occupation)," ",lower(OCCUPATION),"s.")
    from OCCUPATIONS 
    group by OCCUPATION
    ORDER BY COUNT(occupation), lower(occupation); 
    
    --SUBSTRING() = Extracts charachters from string
    --lower() = converts string into lowercase
    
    
