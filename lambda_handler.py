# Reference Peadar Grant notes

import json

def lambda_handler(event, context):
    # Define the JSON data directly within the code
    data = {
        "categories": [
            {
                "name": "The Air Corps Fleet",
                "items": [
                    "Agusta Westland AW139",
                    "Eurocopter EC135 P2",
                    "Eurocopter EC135 T2",
                    "CASA CN235",
                    "Pilatus PC 12",
                    "Learjet 45",
                    "Pilatus Britten Norman Defender",
                    "Pilatus PC-9M"
                ]
            },
            {
                "name": "The Naval Fleet",
                "items": [
                    "L.E. ROISIN P 51",
                    "L.E. NIAMH P 52",
                    "L.E SAMUEL BECKETT P61",
                    "L.E JAMES JOYCE P62",
                    "LE WILLIAM BUTLER YEATS P63",
                    "LE GEORGE BERNARD SHAW P64"
                ]
            }
        ]
    }

    # Extract categories from the JSON data
    categories = data.get('categories', [])

    # Iterate over each category and print its name and items
    for category in categories:
        category_name = category.get('name', '')
        items = category.get('items', [])
        print(f'Category: {category_name}')
        print('Items:')
        for item in items:
            print(f'- {item}')

    return {
        'statusCode': 200,
        'body': json.dumps('JSON data listed successfully!')
    }
