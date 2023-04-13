PROJECT MOBILE 2023



rules for firebase realine time
    {
      "rules": {
        "products" : {
              ".indexOn": ["userId"],
          		".read": true,
              ".write": "auth != null",
        			"userId": {
                ".validate": "data.exists() ? data.val() === auth.uid : newData.val() === auth.uid"
              }    
        },
        "carts" : {
              "$uid":{
                ".read": "$uid === auth.uid",
                ".write": "$uid === auth.uid",
                ".indexOn": ["productId"],
              },
            },
        "orders" : {
              "$uid":{
                ".read": "$uid === auth.uid",
                ".write": "$uid === auth.uid",
              },
            },
        "user-favorites" : {
              "$uid":{
                ".read": "$uid === auth.uid",
                ".write": "$uid === auth.uid",
                ".indexOn": ["isFavorite"],
              },
            },
      ".read": true,
      ".write": true,
      },
    }
