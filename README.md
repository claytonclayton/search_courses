# search_courses
A bash program which displays summaries of UNSW computer science electives

type either 'bash search_courses.sh \<expression\>' or './search_courses.sh \<expression\>' (you will need to 'chmod 775 search_courses.sh' first)
to display neat summaries of all comp electives that match your expression.
the -v option gets you the inverse of your expression.

# Example

bash search_courses.sh T3
will get you all courses that run in T3

bash search_courses.sh -v T\[23\]
will get you all courses ONLY run in T1

bash search_courses.sh 'COMP\[0-9\]\\|\[^\\|]\*security\[^\\|\]\*'
will get you all courses with 'security' in their course name 

if there are errors you might need to execute 'dos2unix comp.txt' first
