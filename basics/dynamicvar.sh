#! bin/bash
#dynamic variables declaring
date="$(date +%D)"
users="$(who | wc -l)"
echo "date is $date"
echo "no.of users are $users"
