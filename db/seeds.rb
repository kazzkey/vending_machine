Stock.create(
  [ {name: 'コーラ', price: 120, count: 5, image: File.open('./app/assets/images/cola.jpg')},
    {name: 'レッドブル', price: 200, count: 5, image: File.open('./app/assets/images/redbull.jpg')},
    {name: '水', price: 100, count: 5, image: File.open('./app/assets/images/water.jpg')},
  ])
Slot.create(money: 0)
