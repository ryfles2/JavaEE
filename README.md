# JavaEE

If you're facing this problem with Eclipse, I've been following many different solutions but the one that worked for me is this:

Right click your project folder and open up Properties.

From the right panel, select Java Build Path then go to Libraries tab.

Select Add External JARs to import the mysql driver.

From the right panel, select Deployment Assembly.

Select Add..., then select Java Build Path Entries and click Next.

You should see the sql driver on the list. Select it and click first.

And that's it! Try to run it again! Cheers!


https://stackoverflow.com/questions/1585811/classnotfoundexception-com-mysql-jdbc-driver/32936812#32936812
