
#!/bin/bash

API_URL="http://localhost:9000/api/gear"

echo "Creating gear..."
CREATE_RESPONSE=$(curl -s -X POST -H "Content-Type: application/json" \
  -d '{
    "name": "Test Gear",
    "type": "Electric Guitar",
    "brand": "Ibanez",
    "notes": "Test notes"
  }' "$API_URL")

echo "✅ Gear created:"
echo "$CREATE_RESPONSE"

GEAR_ID=$(echo "$CREATE_RESPONSE" | grep -o '"id":[0-9]*' | grep -o '[0-9]*')

echo -e "\n Obtaining gear with ID $GEAR_ID..."
curl -s "$API_URL/$GEAR_ID" | jq

echo -e "\n✏️ Updating gear with ID $GEAR_ID..."
curl -s -X PUT -H "Content-Type: application/json" \
  -d "{
    \"name\": \"Updated Gear\",
    \"type\": \"Electric Guitar\",
    \"brand\": \"ESP\",
    \"notes\": \"Updated notes\"
  }" "$API_URL/$GEAR_ID" | jq

echo -e "\nListing gear..."
curl -s "$API_URL" | jq

echo -e "\n Deleting gear with ID $GEAR_ID..."
curl -s -X DELETE "$API_URL/$GEAR_ID"

echo -e "\n✅ Last check: listing gear..."
curl -s "$API_URL" | jq

response=$(curl -s http://localhost:8080/)

if [[ "$response" == "Hola desde Spring Boot con Docker!" ]]; then
  echo "Test passed: Received 'Hola desde Spring Boot con Docker!'"
else
  echo "Test failed: Received '$response'"
fi
