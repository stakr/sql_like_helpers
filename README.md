# SQL LIKE Helpers

Written by stakr GbR (Jan Sebastian Siwy, Martin Spickermann, Henning Staib GbR; http://www.stakr.de/)

Source: https://github.com/stakr/sql_like_helpers

A plugin to build common pattern for the SQL LIKE comperator.


## Example

In order to find all users whose name contain 'john' you can use the following SQL statement:

    SELECT * FROM users WHERE name LIKE '%john%'

With this plugin this look like this in Rails:

    User.find(:all, :conditions => ['name LIKE ?', 'john'.to_sql_contains])

Of couse, the helper methods also escape the SQL LIKE wildcards (<tt>%</tt>, <tt>_</tt>) and the default escape
character (<tt>\\</tt>) itself.


Copyright (c) 2009 stakr GbR (Jan Sebastian Siwy, Martin Spickermann, Henning Staib GbR), released under the MIT license
