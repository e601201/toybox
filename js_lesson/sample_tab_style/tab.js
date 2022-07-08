(()=>{
  const $doc = document;
  const $tab = $doc.getElementById('js-tab');
  const $nav = $tab.querySelectorAll('[data-nav]'); //3つの配列
  const $content = $tab.querySelectorAll('[data-content]'); //３つの配列
  const ACTIVE_CLASS = 'is-active';
  const navLen = $nav.length;
  //初期化
  const init = () => {
    $content[0].style.display = 'block'
  };
  init();
  //クリックしたら起こるイベント
  const handleClick = (e) => {
    e.preventDefault();
    //クリックされたnavとそのdataを取得
    const $this = e.target;
    //dataset.(属性名)でデータ属性の値が取得できる
    const targetVal = $this.dataset.nav;
    console.log(targetVal);

    //対象外のnv、contentを全てリセットする
    let index = 0;
    while (index < navLen) {
      $content[index].style.display = 'none';
      $nav[index].classList.remove(ACTIVE_CLASS)
      index ++ ;
    }

    //対象のコンテンツをアクティブ化する
    $tab.querySelectorAll(`[data-content="${targetVal}"]`)[0].style.display = 'block' ;
    $nav[targetVal].classList.add(ACTIVE_CLASS);
  };
  //全nav要素に対して関数を適用・発火
  let index = 0;
  while(index < navLen){
    $nav[index].addEventListener('click', (e) => handleClick(e));
    index++;
  }

})();