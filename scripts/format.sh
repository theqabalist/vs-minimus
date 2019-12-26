for FILE in $(find . -name "*.dhall")
do
  dhall format --inplace $FILE --ascii
done