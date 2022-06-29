# Deposits-database

Designing a database for accounting of commercial bank deposits

### Functionality:
 - Calculation of the number of contracts in selected currency for each deposit program (SQLQuery10.sql)
 - Calculation of the number of contracts and the amount of investments in each currency for a certain calendar period.(SQLQuery9.sql)
 - Calculation of the amount of accrued interest for one calendar period and the balance of the deposit for the next calendar period, taking into account interest       taxation. (SQLQuery11.sql)
 - View depositors whose deposit amount is within certain limits. (SQLQuery2.sql)
 - Removing of contracts which have expired.(SQLQuery4_DELETE.sql)
 - Replacing of values in tables 
 - Prohibition of adding a new agreement if the deposit amount of this agreement is less than the minimum amount specified in the selected deposit program.(SQLQuery21.sql)
 - Prohibition on removing of contracts whose validity has not yet expired. (SQLQuery15.sql)
 - Processing of addition, updating and deleting of the tables
 
 
### Tasks performed: 
 - Development of infological and datalogical model
- Built structural connections of information objects
- Performed database normalization
- Created diagram and database tables, which contain information about deposit programs, contracts and clients
- Implemented queries  using Transact-SQL language operators
- Processed changes to the database using triggers(insert, update, delete)


### Environment: 
MS SQL Server, Microsoft SQL Server Management Studio
