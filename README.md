#  Documentation
Url: https://tesattackauth-production.up.railway.app/

### Register 
Endpoint: ```/auth/register```
request:
```
{
    "email":"koer@gmail.com",
    "password":"pass",
    "passwordConfirm":"pass"
}
```
response:
```
{
    "error": false,
    "message": "User Created"
}
```

### Login
Endpoint: ```/auth/login```
request:
```
{
    "email":"koer@gmail.com",
    "password":"pass"
}
```
response:
```
{
    "error": false,
    "message": "success",
    "loginResult": {
        "userId": "ff49ba58-fa10-4d8d-b83c-a49cf392d161",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZmNDliYTU4LWZhMTAtNGQ4ZC1iODNjLWE0OWNmMzkyZDE2MSIsImlhdCI6MTY4NTg2Nzg2MCwiZXhwIjoxNjg1OTU0MjYwfQ.tyc6BNJpoMfQgZJwyLi_Q-c9RLDSs3wCYJgMXB0SO4U"
    }
}
```
