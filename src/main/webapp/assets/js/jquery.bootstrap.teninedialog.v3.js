/*
 * teninedialog 1.2.0
 * Copyright (c) 2014 彼岸之远  http://www.xnwai.com/
 * Date: 2014-12-10
 * 针对bootstrap模态对话框的二次封装。
 */
(function ($) {
    $.fn.teninedialog = function (options) {
        var defaults = {
            title: '标题',
            content: '',
            url: '', //远程URL
//			showModalFooter:false,
            showCloseButton: true, //显示关闭按钮
            otherButtons: [], //其他按钮文本，样式默认,["确定","取消"]
            otherButtonStyles: [], //其他按钮的样式，['btn-primary','btn-primary'],bootstrap按钮样式
            bootstrapModalOption: {}, //默认的bootstrap模态对话框参数
            dialogShow: function () {
            }, //对话框即将显示事件
            dialogShown: function () {
            }, //对话框已经显示事件
            dialogHide: function () {
            }, //对话框即将关闭
            dialogHidden: function () {
            }, //对话框已经关闭事件
            clickButton: function (sender, modal, index) {
            } //选中按钮的序号，排除关闭按钮。sender:按钮jquery对象，model:对话框jquery对象,index:按钮的顺序,otherButtons的数组下标
        }
        var options = $.extend(defaults, options);
        var modalID = '';
        var loadimg = "data:image/gif;base64,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";
        if (options.content == '') {
            options.content = '<img id="ajax-loader" style="display:none" height="32" width="32" src="' + loadimg + '" />正在获取数据...';
        }

        //生成一个惟一的ID
        function getModalID() {
            var d = new Date();
            var vYear = d.getFullYear();
            var vMon = d.getMonth() + 1;
            var vDay = d.getDate();
            var h = d.getHours();
            var m = d.getMinutes();
            var se = d.getSeconds();
            var sse = d.getMilliseconds();
            return 't_' + vYear + vMon + vDay + h + m + se + sse;
        }

        $.fn.extend({
            closeDialog: function (modal) {
                var modalObj = modal;
                modalObj.modal('hide');
            }
        });

        return this.each(function () {
            var obj = $(this);
            modalID = getModalID();

            $(this).attr("data-target", modalID);


            var tmpHtml = '<div class="modal fade" id="{ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_{ID}" aria-hidden="true"><div class="modal-dialog" style="padding-top:20%;"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button><h4 class="modal-title" id="myModalLabel_{ID}">{title}</h4></div><div class="modal-body" id="body_{ID}" style="overflow-y: auto;max-height: 600px;">{body}</div><div class="modal-footer"><img id="ajax-loader" style="display:none" height="32" width="32" src="' + loadimg + '" />{button}</div></div></div></div>';
            var buttonHtml = '<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>';
            if (!options.showCloseButton && options.otherButtons.length > 0) {
                buttonHtml = '';
            }
            ;
            //生成按钮
            var btnClass = 'cls-' + modalID;
            for (var i = 0; i < options.otherButtons.length; i++) {
                buttonHtml += '<button buttonIndex="' + i + '" class="' + btnClass + ' btn ' + options.otherButtonStyles[i] + '">' + options.otherButtons[i] + '</button>';
            }
            //替换模板标记
            tmpHtml = tmpHtml.replace(/{ID}/g, modalID).replace(/{title}/g, options.title).replace(/{body}/g, options.content).replace(/{button}/g, buttonHtml);
            $(obj).append(tmpHtml);

            var modalObj = $('#' + modalID);
            //绑定按钮事件,不包括关闭按钮
            $('.' + btnClass).click(function () {
                var index = $(this).attr('buttonIndex');
                options.clickButton($(this), modalObj, index);
            });
//		    if(!options.showModalFooter){
//		    	$(".modal-footer").hide();
//		    }else{
//		    	$(".modal-footer").show();
//		    }
            //绑定本身的事件
            modalObj.on('show.bs.modal', function () {
                //异步加载远程URL
                if (options.url != '') {
                    $('#ajax-loader').show();
                    $.ajax({
                        type: "get",
                        url: options.url,
                        data: "dialogModalId=" + modalID + "&ajaxloader=ajax-loader",
                        success: function (data) {
                            $('#ajax-loader').hide();
                            $('#body_' + modalID).html(data);
                        },
                        error: function (e) {
                            $('#ajax-loader').hide();
                            $('#body_' + modalID).html("加载失败!");
                        }
                    });
                } else {
                    $('#body_' + modalID).html(options.content);
                }
                options.dialogShow();
            });
            modalObj.on('shown.bs.modal', function () {
                options.dialogShown();
            });
            modalObj.on('hide.bs.modal', function () {
                options.dialogHide();
            });
            modalObj.on('hidden.bs.modal', function () {
                options.dialogHidden();
                obj.removeAttr("data-target");
                modalObj.remove();
            });
            modalObj.modal(options.bootstrapModalOption);
        });

    };


    $.extend({
        teninedialog: function (options) {
            $("body").teninedialog(options);
        }
    });

})(jQuery);