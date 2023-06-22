#! /bin/bash

# post order
curl -d '{"order":"test"}' -H "Content-Type: application/json" -X POST "${ORDER_SERVICE}/order"