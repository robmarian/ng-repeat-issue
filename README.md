How to bootstrap
================

1. clone this repo
2. launch with `meteor`
3. open `localhost:3000`

How to reproduce the issue
==========================

1. Sign in as `admin@example.com` with password `admin`
2. Click on `menu > users`
3. A list with all the users on database is displayed
4. Click on the `+` button and create another user through the form **without**
 `ADMIN` permissions
5. The new user should be displayed
6. Refresh the page. You should see a list composed all by a
 *apparently random* single user. **THIS** is the issue.
