(()=>{
  class Accordion {
    //初期化
    constructor(obj){

      console.log(obj.hookName);
      const $elm = document.querySelectorAll(obj.hookName);
      const $trigger = $elm[0].getElementsByTagName(obj.tagName);
      const triggerLen = $trigger.length;
      let index = 0;
      while (index < triggerLen) {
        $trigger[index].addEventListener('click',(e) => this.clickHandler(e));
        index ++;
      }
    }

    clickHandler(e) {
      e.preventDefault();

      const $target = e.currentTarget;
      const $content = $target.nextElementSibling;

      if ($content.style.display === 'block') {
          $content.style.display = 'none';
      } else {
          $content.style.display = 'block';
      }
    }
  }

  const firstAccordion = new Accordion({
    hookName: '#js-faq',
    tagName: 'a'
  });

  const secondAccordin = new Accordion({
    hookName: '#fugafuga',
    tagName: 'h1'
  });

  const thirdAccordin = new Accordion({
    hookName: '#hogehoge',
    tagName: 'h2'
  });

})();