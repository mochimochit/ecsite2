document.addEventListener('DOMContentLoaded', function() {      // 発火タイミングを指定    
  const subSwiper = new Swiper('.sub-slider', {
    direction: "vertical",              //スライドの向きを縦方向に
    slidesPerView: 4,
    })
  
    
  
  const mainSwiper = new Swiper('.main-slider', {
    loop: true,                         //ループ
    slidesPerView: 1,
                    
    pagination: {                       //ページネーション（ドット）
        el: '.swiper-pagination',
    },
    navigation: {                       //ナビゲーション（矢印）
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    thumbs: {
      swiper: subSwiper,
    },
  })
});
