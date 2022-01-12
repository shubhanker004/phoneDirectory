while :
do
clear
echo "Welcome to your Phone Directory app!"
echo "1. Add a contact"
echo "2. Search contact"
echo "3. Delete contact"
echo "4. View all your contacts"
echo "5. Close Application"

read -p "Enter your choice: " usr_cmd
clear

case $usr_cmd in 
1)echo "Add new contact-->"
  read -p "Enter Name " name
  read -p "Enter Number " number
  clear
  echo "New contact info: "
  echo "-> Name: $name.       Number: $number";;
  echo "$name : $number" >> phonedir.log
  echo "New contact created successfully."
2)echo "Search Contact-->"
  read -p "Enter contact name to search" search_query
  clear
  echo "Search results: "
  grep -i $search_query phonedir.log;;
3)echo "Delete contacts--> "
  read -p "Enter exact name to be deleted: " delte_string
  sed -i -e "/$delete_string/d" phonedir.logs
  echo "Contact deleted successfully";;
4)echo "All contacts-->"
  echo ""
  cat phonedir.log;;
5)break;;
*)echo "Invalid key pressed!";;
esac;

read -p "Enter 5 to confirm closing this application. Any other option to continue: " confirm_exit
if [$confirm_exit -eq 5]
then break
fi

done
