Rails app created by Benjamin de Boissieu

The goal of this app is to display all the circular prime number below a number we put.

About the Back-end:
I choose to create a model Circular_nb with a value as integer and a result as array.

When the value is entered, an instance is created.
Then the result is calculated when the page 'Show' opens.

A circular prime is a prime with the property that each time we do a permutation circular, each number is a prime too.

By example, 197 is a circular prime because 197, 971 and 719 are prime.

In this app, I am checking each number from the value entered to 0.
If the number is a circular prime, it goes in the array results.

To be a circular prime, it checked first if it is a prime or not.
To see if it is a prime,
I check from 2 to the number/2, if the modulo of the division is not nill.
If it is not the case, then I do a first permutation and check if it is a prime.

If the first permutation is a prime and I do an other permutation and etc...

Then I display the results.

About the Front-end.

I display the results in a table.
By clicking on the title, it reverse the sorts.

I added an export CSV to use the results easely.



