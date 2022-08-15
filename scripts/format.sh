for FILE in $(find . -name "*.dhall")
do
  dhall format $FILE --ascii
done