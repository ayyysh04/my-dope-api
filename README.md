# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## GUIDE : https://medium.com/swlh/how-to-build-an-api-with-ruby-on-rails-28e27d47455a

## API Endpoints
- GET : `curl -X GET http://localhost:3000/api/v1/products`
- POST : `curl -X POST http://localhost:3000/api/v1/products \
  -H "Content-Type: application/json" \
  -d '{
        "product": {
          "name": "CJ890 Series Desktop Curved Monitor",
          "brand": "Samsung",
          "price": "$1099.99",
          "description": "49 inch 3840x1080 Super Ultra-Wide Desktop Monitor for Business, 144 Hz, USB-C, HDMI, DisplayPort, 3-Year Warranty (C493890DKN)"
        }
      }'`
- GET : `curl -X GET http://localhost:3000/api/v1/products/1`


## Commands use to create
- `rails g model product name:string brand:string price:string description:string --no-helper --no-assets --no-template-engine --no-test-framework`
- `rails g controller api/v1/products index show --no-helper --no-assets --no-template-engine --no-test-framework`
- `rake db:create` or `rails db:create`
-  `rake db:migrate`
- `rails server` or `rails s`
- `rails c` 
- Add Test Data : `p = Product.new(name: "PS4", brand: "Sony", price: "$400.00 USD", description: "NextGen Gaming Console")` and `p.save`
- `rake db:seed`

## Ruby version

## System dependencies

## Configuration

## Database creation

## Database initialization

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
