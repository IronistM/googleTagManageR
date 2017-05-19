[![Travis-CI Build Status](https://travis-ci.org/IronistM/googleTagManageR.svg?branch=master)](https://travis-ci.org/IronistM/googleTagManageR)

## In Short
The R way to interact with Google's Tag Manager API.

### Scope
At the moment listing of elements is available, but in the future both updates
and delete will be supported. This is **not** a professional package and serves mostly as a way of organising code snippets for my work.

### Credits
Most of this is adopted from the excellent [autoGoogleAPI](https://github.com/MarkEdmondson1234/autoGoogleAPI) package from [Mark Edmondson](r@sunholo.com) and his most awesome [googleAnalyticsR](http://code.markedmondson.me/googleAnalyticsR) that I use daily.

## Installation
To install the package in your `R` setup just use `devtools` and the `install_github()` function like below


```R
install.packages('devtools')
devtools::install_github(username = 'IronistM',repo = 'googleTagManageR')
```
## Examples

### Authenticate to GTM API

```
gtm_auth()
```

### List Accounts you have access



```R
gtm_accounts_list()
```

Let's say you want to get the details from `YOUR_ACCOUNT_ID`, then you use the following

```R
gtm_account(accountId = YOUR_ACCOUNT_ID)
```

### List Containers per account

Similarly, to get the containers of `YOUR_ACCOUNT_ID`, use the following

```R
gtm_containers_list(accountId = YOUR_ACCOUNT_ID)
```
