$(function () {

    /***************投资填写弹窗*******************/

    var mstz_btn = $('.mstz');
    var dialog = $('.dialog');
    var close_btn = $('.dialog .content_right .close');

    mstz_btn.click(function () {

        dialog.show();
    });

    close_btn.click(function () {

        dialog.hide();
    });


    /***************TAB切换栏*******************/


    var tz_tab_li = $('.tz_tab ul li');
    var tz_tab_content = $('.tz_tab .tz_tab_content>div');

    tz_tab_li.eq(0).attr('class', 'active');
    tz_tab_content.eq(0).show();


    $.each(tz_tab_li, function (index, value) {

        $(this).click(function () {


            $(this).addClass('active').siblings().removeClass('active');
            tz_tab_content.eq(index).show().siblings().hide();

        });


    });


});
