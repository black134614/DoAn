$(function () {
    StylishClock(); //chạy đồng hồ
    $(".main-page-carousel.owl-carousel").owlCarousel({
        items: 1,
        loop: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 4000,
        autoplayHoverPause: true,
        nav: false,
        dots: true,
        animateOut: 'animate__backOutLeft',
        animateIn: 'animate__backInLeft'
    });
    $(".card-video.owl-carousel").owlCarousel({
        items: 1,
        loop: true,
        margin: 5,
        autoplay: true,
        autoplayTimeout: 4000,
        autoplayHoverPause: true,
        nav: false,
        dots: true,
        animateOut: 'animate__slideOutDown',
        animateIn: 'animate__flipInX'
    });
    AutoSizeContent();
    $('[data-toggle="tooltip"]').tooltip();
    $(".table-row").click(function () {
        window.document.location = $(this).data("href");
    });
    //  Set caption from card text
    $('.card-video a').fancybox({
        caption: function (instance, item) {
            return $(this).parent().find('.card-text').html();
        }
    });
    $('[data-fancybox="preview-img"]').fancybox({
        thumbs: {
            autoStart: true
        }
    });
    $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
            $('#back-to-top').fadeIn();
        } else {
            $('#back-to-top').fadeOut();
        }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 400);
        return false;
    });

    //Animate func
    const animateCSS = (element, animation, prefix = 'animate__') =>
        // We create a Promise and return it
        new Promise((resolve, reject) => {
            const animationName = `${prefix}${animation}`;
            const node = document.querySelector(element);

            node.classList.add(`${prefix}animated`, animationName);

            // When the animation ends, we clean the classes and resolve the Promise
            function handleAnimationEnd() {
                node.classList.remove(`${prefix}animated`, animationName);
                resolve('Animation ended');
            }

            node.addEventListener('animationend', handleAnimationEnd, { once: true });
        });

    //set up AOS animation
    AOS.init({
        easing: 'ease-out-back',
        duration: 1000
    });


});

function AutoSizeContent() {
    //auto size nội dung theo hình ảnh
    var heightImg = $(".page-item-content .item-img img").height();
    var screenWidtdh = $(window).width();
    if (screenWidtdh > 576) {
        $(".page-item-content .item-content").height(heightImg).css({
            overflow: "hidden"
        });
    }
    else {
        $(".page-item-content .item-content").height(100).css({
            overflow: "hidden"
        });
    }
}
$(window).resize(function () {
    AutoSizeContent();
});
