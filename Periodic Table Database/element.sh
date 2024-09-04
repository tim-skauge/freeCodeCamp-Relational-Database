PSQL="psql --username=freecodecamp --dbname=periodic_table -t -c"

START () {
  if [[ -z $1 ]]
  then
    echo Please provide an element as an argument.
  else 
    SEARCH_ELEMENT $1
  fi 
}

SEARCH_ELEMENT() {
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE name='$1' OR symbol='$1'";)
    MESSAGE_FORMATTING
  else
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$1") 
    MESSAGE_FORMATTING
  fi
}

MESSAGE_FORMATTING() {
  if [[ -z $ELEMENT ]]
  then
    echo I could not find that element in the database.
  else
    echo $ELEMENT | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT
    do
      echo The element with atomic number $ATOMIC_NUMBER is $NAME "($SYMBOL)". It\'s a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius. 
    done
  fi
}

START $1
