# LeakHound - Google Dorking Script for Sensitive Information Leaks

```
  _               _    _   _                       _ 
 | |    ___  __ _| | _| | | | ___  _   _ _ __   __| |
 | |   / _ \/ _` | |/ / |_| |/ _ \| | | | '_ \ / _` |
 | |__|  __/ (_| |   <|  _  | (_) | |_| | | | | (_| |
 |_____\___|\__,_|_|\_\_| |_|\___/ \__,_|_| |_|\__,_|
                                                      
                       by @spazbg                     
```
LeakHound is a powerful bash script that automates the process of searching for sensitive information leaks on various warez and paste bin sites using Google dorking techniques. It allows cybersecurity professionals, pentesters, and researchers to quickly generate targeted Google search queries to identify potential data breaches, exposed credentials, or other sensitive information.

## Features
- Supports searching on a comprehensive list of warez and paste bin sites
- Allows using complex search terms with AND/OR operators
- Generates Google search URLs with the specified search terms and site filters
- Provides an option to limit the number of sites in the output
- Supports multiple search engines: Google (default), Bing, and Yandex
- Easy to use command-line interface

## Usage
```./leakhound.sh [options]```

## Options
- `-d <search_terms>`: Specify the search terms or Google dorks to use for searching leaks
- `-warez`: Search for leaks on warez sites
- `-paste`: Search for leaks on paste bin sites
- `-r <rate_limit>`: Limit the number of sites in the output
- `-e <search_engine>`: Specify the search engine to use (google, bing, or yandex)

## Examples
- Search for leaks containing the term "confidential" on warez sites:  
```./leakhound.sh -d "confidential" -warez```
- Search for leaks containing either "username" or "password" on paste bin sites:  
```./leakhound.sh -d "username OR password" -paste```
- Search for leaks containing both "API" and "key" on warez sites, limiting the output to 5 sites:  
```./leakhound.sh -d "API AND key" -warez -r 5```
- Search for leaks containing "foo@bar.com" on warez sites using Bing:  
  ```./leakhound.sh -d "foo@bar.com" -warez -e bing```
- Search for leaks containing either "username" and "password" on paste bin sites using Yandex:  
```./leakhound.sh -d "username AND password" -paste -e yandex```