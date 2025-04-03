# SnowFlake additions
My collection of snowflake additional functions. mostly because I missed these functions in Snowflake.
Currently:
- Date functions
  - [EOMONTH()](#eomonth): Returns last day of month for a given date
  - [BOYEAR()](#boyear): Returns first day of year for a given date
- Conversion functions 
  - [BLANKIFNULL()](#blankifnull): replaces a NULL value with a blank string
  - [NULLIFBLANK()](#nullifblank): replaces a blank string  with a NULL value

## Date functions

### EOMONTH 
Returns last day in a month, based om given date.

#### Parameters
|       parameter_name       | data_type |                                  description                                   |                     valid_inputs                     |   defaults   |
|----------------------------|-----------|--------------------------------------------------------------------------------|------------------------------------------------------|--------------|
| @what_to_check             | date      | a date in format YYYY-MM-DD                                                    | "2025-02-01"                                         | (none)       |

#### Example
```
SELECT EOMONTH('2024-02-15')
```
### EOYEAR
Returns last day of a year. Parameter: date

#### Parameters
|       parameter_name       | data_type |                                  description                                   |                     valid_inputs                     |   defaults   |
|----------------------------|-----------|--------------------------------------------------------------------------------|------------------------------------------------------|--------------|
| @what_to_check             | date      | a date in format YYYY-MM-DD                                                    | "2025-02-01"                                         | (none)       |

#### Example
```
SELECT EOYEAR('2024-02-15')
```
### BOYEAR
Returns first day of a year. Parameter: date

#### Parameters
|       parameter_name       | data_type |                                  description                                   |                     valid_inputs                     |   defaults   |
|----------------------------|-----------|--------------------------------------------------------------------------------|------------------------------------------------------|--------------|
| @what_to_check             | date      | a date in format YYYY-MM-DD                                                    | "2025-02-01"                                         | (none)       |

#### Example
```
SELECT BOYEAR('2024-02-15')
```
## Conversion functions

### BLANKIFNULL
As a counterpart of ZEROIFNULL. Returns blank string if its argument is NULL; otherwise, returns its argument.

#### Parameters
|       parameter_name       | data_type |                                  description                                   |                     valid_inputs                     |   defaults   |
|----------------------------|-----------|--------------------------------------------------------------------------------|------------------------------------------------------|--------------|
| @what_to_check             | varchar   | some text, of a null value                                                     | valid varchars                                       | (none)       |

#### Example
```
SELECT BLANKIFNULL(columnname)
FROM tablename;
```
### NULLIFBLANK
As a counterpart of NULLIFZERO: Returns NULL if the argument is blank string; otherwise, returns the argument.

#### Parameters
|       parameter_name       | data_type |                                  description                                   |                     valid_inputs                     |   defaults   |
|----------------------------|-----------|--------------------------------------------------------------------------------|------------------------------------------------------|--------------|
| @what_to_check             | varchar   | some text, of a null value                                                     | valid varchars                                       | (none)       |

#### Example
```
SELECT NULLIFBLANK(columnname)
FROM tablename;
```

Feel free to contact me at wfvdijk@gmail.com
