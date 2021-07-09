## Night-Writer
Night-Writer is a ruby project meant to translate a message in english characters to the virtual braille alphabet equivalent (https://en.wikipedia.org/wiki/English_Braille#Alphabet). The app also can translate a message in braille back to text. The app can handle both upper-case and lower-case lettering as well as spaces. Each braille letter is written as 3 lines in a column, containing 2 characters in each row, either 0 to represent a bump, or . to represent a flat space. Please see below for example messages and how to use the app. 

## Versions
- Ruby 2.5.3

## Setup / Use
1. Fork this repository.
2. Clone down the repository to your personal machine via terminal. 
3. Follow the steps in this link to download / change your ruby version to 2.5.3 https://superuser.com/questions/340490/how-to-install-and-use-different-versions-of-ruby
4. Create a file named message.txt within the project with a message using english characters, or use the existing message.txt.
5. Use the command ruby ./lib/night_writer.rb message.txt braille.txt within terminal to create a braille message.
6. Use the command ruby ./lib/night_reader.rb braille.txt new_message.txt  within terminal to return the message back in english characters. 
7. The first .txt file is the file the program will read, the 2nd .txt file is the name of the file you want to create, it can be named anything.
8. Open the new files to view the translated message in braille or english. 


## Technologies
- Ruby
- RSpec
## Author
* Wyatt Wicks [GitHub](https://github.com/Wyattwicks) | [LinkedIn](https://www.linkedin.com/in/wyattwicks/)
