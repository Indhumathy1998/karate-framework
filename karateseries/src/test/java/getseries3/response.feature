Feature: check returned users by API

   Background:
      * url 'https://gorest.co.in'
      * header Authorization = 'Bearer'
      
   Scenario: get list of all users having name with varma
   
      Given path  '/public-api/users'
      And   param name = 'Varma'
      And   param status = 'inactive'
      When  method GET
      Then  status 200
      
      And def userResponse = response
      Then match userResponse.data[*].name contains ["Surya Varma"]