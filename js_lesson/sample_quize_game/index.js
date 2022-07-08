const quize = [
  {
    question: '一番売れたゲームは？',
    answers: [
      "ps1",
      "ps2",
      "ps3",
      "ps4"
    ],
    correct: 'ps4'
  },
  {
    question: '一番売れたゲームは？',
    answers: [
      "ps2",
      "ps2",
      "ps2",
      "ps4"
    ],
    correct: 'ps4'
  },
  {
    question: '一番売れたゲームは？',
    answers: [
      "ps4",
      "ps3",
      "ps3",
      "ps1"
    ],
    correct: 'ps4'
  }
];

const quizeLength = quize.length;
let quizeIndex = 0;
let score = 0;
//$マークの意味: HTMLのオブジェクトを取ってくる場合
const $buttons = document.getElementsByTagName('button');
const buttonLength = $buttons.length;

const setupQuize = ()=> {
  document.getElementById('js-question').textContent = quize[quizeIndex].question;
  let buttonIndex = 0;
  while (buttonIndex < buttonLength ) {
    document.getElementsByTagName('button')[buttonIndex].textContent = quize[quizeIndex].answers[buttonIndex];
    buttonIndex ++;
  }
}
setupQuize();

const clickHandler = (e) => {
  if ( quize[quizeIndex].correct === e.target.textContent ) {
    window.alert('正解');
    score ++;
  } else {
    window.alert('不正解');
  }

  quizeIndex ++ ;
  if (quizeIndex < quizeLength) {
    setupQuize();
  } else {
    window.alert(`終了！あなたの正解数${score}/${quizeLength}です`);
  }
};

let handlerIndex = 0;
while (handlerIndex < buttonLength) {
  $buttons[handlerIndex].addEventListener('click' , (e) => {
    clickHandler(e);
  });
  handlerIndex ++;
}