# Readme

A simple library tracking app, written hastily, with intentional bugs.

# Known bugs

* Genre is singular in the menu.
* The height of a book can be down to -5 cm.
* The height of a book can be up to 50 cm (what if it's bigger?)
* Book description is mis-spelled.
* Book Created At is a long form, awkward.
* Select boxes are different lengths.
* Authors can be saved without a name.
* Genre show has a link to books, but book doesn't have one to genre (like it does to author)
* Menu says Library Cards, but header says Cards
* Clicking the X on flash messages doesn't dismiss the message.
* Some flash success messages display twice on screen.
* Loans says 'Expiry Date' but Overdue Books says 'Expiration Date'
* Perhaps 'Library Cards' should be under Inventory (more of a discussion point) 
* Once a book has been veiewed the texte on the Delete button goes grey - changes state. Bad for accessibility
* Edit view - field validation text is misaligned with the field 
* Edit view - validation messaging is missing capitalisation and punctuation
* Scientifc values appear if enetering 0.000004 into the height field
