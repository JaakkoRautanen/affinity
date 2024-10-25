# Affinity symbol set
Free 2D symbols for computer network diagrams. 

## Why?
Simple. I wanted modern, crisp, pixel-perfect, printable, manufacturer independent symbols for computer-network topology that does not look like they were made in the 80s. 

## Want to change color?
`sed -e "s/rgb(77,77,77)/rgb(45,103,185)/" c_shield_gray.svg > c_shield_blue.svg`

## Symbol overview
![alt text](https://github.com/ecceman/affinity/blob/master/affinity_index.png)


## TODO

Create script which modifies all svg files like this:
 - adds css style and classes
 - removes styles not needed
 - creates drawio library
 - add `editableCssRules=.*;`
 - resizes elements to 80
 - adds names to elements
