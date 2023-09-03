FROM smartcontract/chainlink:1.0.0

# Create the chainlink node root path
RUN mkdir /chainlink

# Arg for api user email, with default value
ARG API_USER_EMAIL="itachimg10@gmail.com"
ENV API_USER_EMAIL=$API_USER_EMAIL

# Arg for api user password, with default value
ARG API_USER_PASSWORD="ucmadmin@123"
ENV API_USER_PASSWORD=$API_USER_PASSWORD

# Arg for node wallet password, with default value
ARG WALLET_PASSWORD="ucmadmin@123"
ENV WALLET_PASSWORD=$WALLET_PASSWORD

# Create chainlink node required values to initialize with
RUN echo $API_USER_EMAIL > /chainlink/.api
RUN echo $API_USER_PASSWORD >> /chainlink/.api
RUN echo $WALLET_PASSWORD > /chainlink/.password
