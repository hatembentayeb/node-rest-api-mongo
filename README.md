# Tutorial Link



# Clone the code 

```
git clone https://github.com/hatembentayeb/node-rest-api-mongo.git 
cd node-rest-api-mongo
```

# install dependencies 

`npm install`

# run a mongo instance

`docker run -p 27017:27017  --name mymongo -d mongo:latest`

# Modfy the .env file

```
PORT=3000
MONGODB_URI=mongodb://172.17.0.3:27017
DB_NAME=hatem
```

# run the app 

`npm start`

# Insert data 

```
curl  -X POST -H "Content-Type: application/json" "http://localhost:3000/products" -d @products.json | jq 
```

# Get data 

```
curl http://localhost:3000/products | jq
```