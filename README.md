# Ruby on Rails Coding Challenge

It's a simple coding challenge asked by a company.

## Installation

- You need to have `Ruby` and `PostgreSQL` installed on your machine.

Just execute the usual Rails setup:

`bundle install`
`bundle exec rails db:setup`

And install the JavaScript packages with:

`yarn install`

## Goals

The challenge was to provide an import mechanism for products and images which can be run at any time.

They provided some example data under `db/dataset`. There is a `products.csv` file and an `images` directory that contains all images for each product.
Each column in the csv file contains the name of the product, its category (type), its price and its description.
The `images` directory contains all the images for each product. The images are inside a directory with the same product name. For example given a product with name `A` you should expect to find its images under `images/A/*imageNames`.

In order to test the import, we might import a different dataset using the exact same format.

## Definition of Done:

* Set up the appropriate data model(s) from the dataset
* Create the related functionality to import all the products and the images from the dataset provided
* Create a graphql endpoint to expose the product details (product information and its related images)
