@vehicles = [
  {
    id: 101
    year: 2003
    make: 'Hyundai'
    model: 'Elantra'
    vin: 'ABC1234'
    messages: [
      {
        id: 201
        body: 'lorem ipsum'
        sender: {
          name: 'John Smith'
          dealership: 'Jaguar of Jacksonville'
          fromSelf: true
        }
      },
      {
        id: 202
        body: 'lorem ipsum'
        sender: {
          name: 'Tom Jones'
          dealership: 'Audi of Atlanta'
          fromSelf: false
        }
      },
      {
        id: 203
        body: 'lorem ipsum'
        sender: {
          name: 'John Smith'
          dealership: 'Jaguar of Jacksonville'
          fromSelf: true
        }
      }
    ]
  },
  {
    id: 102
    year: 1990
    make: 'Isuzu'
    model: 'Trooper'
    vin: 'ALE1997'
    messages: [
      {
        id: 204
        body: 'lorem ipsum'
        sender: {
          name: 'Tom Jones'
          dealership: 'Audi of Atlanta'
          fromSelf: false
        }
      }
    ]
  },
  {
    id: 103
    year: 2002
    make: 'Acura'
    model: 'TL 3.2'
    vin: 'JCONE23'
    messages: []
  },
  {
    id: 104
    year: 2008
    make: 'Nissan'
    model: 'Altima'
    vin: 'ZWJ1823'
    messages: []
  }
]
