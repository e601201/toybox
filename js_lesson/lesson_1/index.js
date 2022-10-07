let huga = "hello world";
const inoki = ['イーチ','ニー','サン','だー']

// let index = 0;
// while(index < inoki.length ){
//   console.log(inoki[index])
//   index ++;
// }

const test = (arg) => {
  if (inoki.length > arg) {
    console.log('ぼんばいえ');
  } else {
    console.log('ボンバー');
  }
};

const car = {
  color: 'white',
  size: 'big',
  price: 500 ,
  sound: () => {
    console.log("ブルルーン");
  }
};

const collectButton = document.getElementsByTagName('button')[0]

collectButton.addEventListener('click', ()=>{
  console.log(car.color)
});
console.log('私の名前は\'daichi\'です');
const userName = 'daichi';
console.log(`こんにちは
私は${userName}です
私は元気です`)