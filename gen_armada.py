#!/usr/bin/env python3
# Reference Peadar Grant notes

armada = {
    'categories': [
        {
            # https://www.military.ie/en/who-we-are/air-corps/the-fleet/
            # where I got the data

            'name': 'The Air Corps Fleet',
            'items': [ 'Agusta Westland AW139', 'Eurocopter EC135 P2','Eurocopter EC135 T2','CASA CN235','Pilatus PC 12','Learjet 45','Pilatus Britten Norman Defender','Pilatus PC-9M' ]
         },
        {
            # https://www.military.ie/en/who-we-are/naval-service/the-fleet/

            'name': 'The Naval Fleet',
            'items': ['L.E. ROISIN P 51', 'L.E. NIAMH P 52','L.E SAMUEL BECKETT P61','L.E JAMES JOYCE P62','LE WILLIAM BUTLER YEATS P63','LE GEORGE BERNARD SHAW P64' ]
        }
        ]
    }
import json
print(json.dumps(armada))
