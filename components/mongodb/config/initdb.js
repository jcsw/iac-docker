db = db.getSiblingDB('iac_adm');

db.createCollection('iac_collection');

db.iac_collection.insertMany([
    {
        "name": "Item 1"
    },
    {
        "name": "Item 2"
    }
]);