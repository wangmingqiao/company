// jquery.cookie.js
$(function(){
    var pluses = /\+/g;

    function encode(s) {
        return config.raw ? s : encodeURIComponent(s);
    }

    function decode(s) {
        return config.raw ? s : decodeURIComponent(s);
    }

    function stringifyCookieValue(value) {
        return encode(config.json ? JSON.stringify(value) : String(value));
    }

    function parseCookieValue(s) {
        if (s.indexOf('"') === 0) {
            // This is a quoted cookie as according to RFC2068, unescape...
            s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
        }

        try {
            // Replace server-side written pluses with spaces.
            // If we can't decode the cookie, ignore it, it's unusable.
            // If we can't parse the cookie, ignore it, it's unusable.
            s = decodeURIComponent(s.replace(pluses, ' '));
            return config.json ? JSON.parse(s) : s;
        } catch(e) {}
    }

    function read(s, converter) {
        var value = config.raw ? s : parseCookieValue(s);
        return $.isFunction(converter) ? converter(value) : value;
    }

    var config = $.cookie = function (key, value, options) {

        // Write

        if (value !== undefined && !$.isFunction(value)) {
            options = $.extend({}, config.defaults, options);

            if (typeof options.expires === 'number') {
                var days = options.expires, t = options.expires = new Date();
                t.setTime(+t + days * 864e+5);
            }

            return (document.cookie = [
                encode(key), '=', stringifyCookieValue(value),
                options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
                options.path    ? '; path=' + options.path : '',
                options.domain  ? '; domain=' + options.domain : '',
                options.secure  ? '; secure' : ''
            ].join(''));
        }

        // Read

        var result = key ? undefined : {};

        // To prevent the for loop in the first place assign an empty array
        // in case there are no cookies at all. Also prevents odd result when
        // calling $.cookie().
        var cookies = document.cookie ? document.cookie.split('; ') : [];

        for (var i = 0, l = cookies.length; i < l; i++) {
            var parts = cookies[i].split('=');
            var name = decode(parts.shift());
            var cookie = parts.join('=');

            if (key && key === name) {
                // If second argument (value) is a function it's a converter...
                result = read(cookie, value);
                break;
            }

            // Prevent storing a cookie that we couldn't decode.
            if (!key && (cookie = read(cookie)) !== undefined) {
                result[name] = cookie;
            }
        }

        return result;
    };

    config.defaults = {};

    $.removeCookie = function (key, options) {
        if ($.cookie(key) === undefined) {
            return false;
        }

        // Must not alter options, thus extending a fresh object...
        $.cookie(key, '', $.extend({}, options, { expires: -1 }));
        return !$.cookie(key);
    };
});

// 加载ajax页面的css
function execute_style(html) {
    if (html) {
        var reg = /<style position="page"[^>]*>([^\x00]+)$/i;
        //对整段HTML片段按<\/script>拆分
        var htmlBlock = html.split("<\/style>");
        for ( var i in htmlBlock) {
            var blocks; // 匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
            if (blocks = htmlBlock[i].match(reg)) {
                //清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
                var code = blocks[1].replace(/<!--/, '');
                try {
                    $('head').append('<style type="text/css">' + code + '</style>');
                } catch (e) {}
            }
        }
    }
}

// 加载ajax页面的js
function execute_script(html) {
    if (html) {
        var tmp = '';
        var script = '';
        $(html).find('script[position="page"]').each(function(){
            tmp = $(this).html();
            if (tmp.length == 0) {
                tmp = $(this)[0].outerHTML;
                reg = /src=".*"/i;
                var src = tmp.match(reg);
                if ($('.full-script script[' + src + ']').length == 0) {
                    $('.full-script').append(tmp);
                }
            } else {
                script += tmp;
            }
        });
        if (script) {
            if (!!(window.attachEvent && !window.opera)) {
                execScript(script);
            } else {
                window.eval(script);
            }
        }
    }
}

$(function(){
    //jQuery弹窗提醒插件
    $.alertMessager = function(message, type, time, top) {
        if (top) {
            myApp.addNotification({
                title: '提示',
                message: message
            });
        } else {
            if (type == 'success') {
                toast = myApp.toast(message, '<div><span class="fa fa-check"></span></div>', {});
            } else {
                toast = myApp.toast(message, '<div><span class="fa fa-close"></span></div>', {});
            }
            toast.show();
        }
    };


    // Ajax全局设置
    $.ajaxSetup({
        timeout: 5000,
        dataType: 'json',
        xhrFields: {
            withCredentials: true  // 跨域请求携带凭证
        }
    });


    // 全选/反选/单选的实现
    $(document).on('click', '.check-all', function() {
        $(".ids").prop("checked", this.checked);
    });

    $(document).on('click', '.ids', function() {
        var option = $(".ids");
        option.each(function() {
            if (!this.checked) {
                $(".check-all").prop("checked", false);
                return false;
            } else {
                $(".check-all").prop("checked", true);
            }
        });
    });

    // 搜索功能
    $(document).on('click', '.search-btn', function() {
        var url = $(this).closest('form').attr('action');
        var query = $(this).closest('form').serialize();
        query = query.replace(/(&|^)(\w*?\d*?\-*?_*?)*?=?((?=&)|(?=$))/g, '');
        query = query.replace(/(^&)|(\+)/g, '');
        if (url.indexOf('?') > 0) {
            url += '&' + query;
        } else {
            url += '?' + query;
        }
        window.location.href = url;
        return false;
    });

    // 回车搜索
    $(document).on('keydown', '.search-input', function(e) {
        if (e.keyCode === 13) {
            $(this).closest('form').find('.search-btn').click();
            return false;
        }
    });

    /*
    * 改变URL参数
    * url 目标url
    * arg 需要替换的参数名称
    * arg_val 替换后的参数的值
    * return url 参数替换后的url
    */
    function change_url_parameter(destiny, par, par_value) {
        var pattern = par+'=([^&]*)';
        var replaceText = par+'='+par_value;
        if (destiny.match(pattern)) {
            var tmp='/('+ par+'=)([^&]*)/gi';
            tmp = destiny.replace(eval(tmp), replaceText);
            return (tmp);
        } else {
            if (destiny.match('[\?]')) {
                return destiny+'&'+ replaceText;
            } else {
                return destiny+'?'+replaceText;
            }
        }
        return destiny+'\n'+par+'\n'+par_value;
    }

    // 多条件筛选
    $('body').delegate('a.query-link', 'click', function() {
        var url = window.location.href;
        var data_name = $(this).attr('data-name');
        var data_value = $(this).attr('data-value');
        url = change_url_parameter(url, data_name, data_value);
        window.location.href = url;
        return false;
    });


    // 刷新验证码
    $(document).on('click', '.reload-verify', function() {
        var verifyimg = $(this).attr("src");
        if (verifyimg.indexOf('?') > 0) {
            $(this).attr("src", verifyimg + '&random=' + Math.random());
        } else {
            $(this).attr("src", verifyimg.replace(/\?.*$/, '') + '?' + Math.random());
        }
    });

    //发送验证码倒计时
    function time(that, wait){
        if (wait == 0) {
            $(that).removeClass('disabled').prop('disabled',false);
            $(that).html('重新发送验证码');
        } else {
            $(that).html(wait+'秒后重新发送');
            wait--;
            setTimeout(function(){
                time(that, wait);
            }, 1000);
        }
    }

    // 发送邮件验证码
    $(document).on('click', '.send-mail-verify', function() {
        var url = OpenCMF.TOP_HOME_PAGE + '/index.php?s=/user/user/send_mail_verify';
        var that = this;
        var title = $(that).attr('data-title');
        var email = $(that).closest('form').find('input[name="email"]').val();
        var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email)) {
            $.alertMessager('邮箱账号不正确', 'danger');
            $(that).addClass('disabled').prop('disabled', true);
            time(that, 5);
        } else {
            $(that).addClass('disabled').prop('disabled', true);
            time(that, 1);
            $.ajax({
                url:url,
                data:{'email': email,'title': title},
                type:'POST',
                success:function(data){
                    if (data.status == 1) {
                        $.alertMessager(data.info, 'success');
                    } else {
                        $.alertMessager(data.info, 'danger');
                    }
                },
                error: function(e) {
                    if (e.responseText) {
                        alert(e.responseText);
                    }
                    $(that).removeClass('disabled').prop('disabled', false);
                }
            });
        }
        return false;
    });

    // 发送短信验证码
    $(document).on('click', '.send-mobile-verify', function() {
        var url = OpenCMF.TOP_HOME_PAGE + '/index.php?s=/user/user/send_mobile_verify';
        var that = this;
        var title = $(that).attr('data-title');
        var mobile = $(this).closest('form').find('input[name="mobile"]').val();
        var filter  = /^1\d{10}$/;
        if (!filter.test(mobile)) {
            $.alertMessager('手机号码不正确', 'danger');
            $(that).addClass('disabled').prop('disabled', true);
            time(that, 5);
        } else {
            $(that).addClass('disabled').prop('disabled', true);
            time(that, 30);
            $.ajax({
                url:url,
                data:{'mobile': mobile,'title': title},
                type:'POST',
                success:function(data){
                    if (data.status == 1) {
                        $.alertMessager(data.info, 'success');
                    } else {
                        $.alertMessager(data.info, 'danger');
                    }
                },
                error: function(e) {
                    if (e.responseText) {
                        alert(e.responseText);
                    }
                    $(that).removeClass('disabled').prop('disabled', false);
                }
            });
        }
        return false;
    });


    // 获取GPS定位
    function get_location(){
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(get_location_success, get_location_error);
        } else {
            $.alertMessager('浏览器不支持地理定位', 'danger');
        }
    }

    // 获取GPS定位存储进cookie,后台用$_COOKIE['oc_latitude']和$_COOKIE['oc_longitude']读取
    // 如果需要用于GPS距离计算直接使用存储的坐标即可，如果需要在百度地图定位则需要手动调用百度地图接口进行坐标转换
    function get_location_success(position){
        var lat = position.coords.latitude; //纬度
        var lng = position.coords.longitude; //经度
        $.cookie('oc_latitude', lat, {path: OpenCMF.VAR_ROOT});
        $.cookie('oc_longitude', lng, {path: OpenCMF.VAR_ROOT});
    }

    // 获取GPS定位错误提示
    function get_location_error(error){
        switch(error.code) {
            case error.PERMISSION_DENIED:
                //$.alertMessager('定位失败,用户拒绝请求地理定位', 'danger');
                break;
            case error.POSITION_UNAVAILABLE:
                //$.alertMessager('定位失败,位置信息是不可用', 'danger');
                break;
            case error.TIMEOUT:
                //$.alertMessager('定位失败,请求获取用户位置超时', 'danger');
                break;
            case error.UNKNOWN_ERROR:
                //$.alertMessager('定位失败,定位系统失效', 'danger');
                break;
        }
    }

    // 请求定位
    //get_location();
    //window.setInterval(get_location, 10000);


    //ajax get请求
    $(document).on('click', '.ajax-get', function() {
        var target;
        var that = this;
        if ($(this).hasClass('confirm')) {
            if (!confirm('确认要执行该操作吗?')) {
                return false;
            }
        }
        if ((target = $(this).attr('href')) || (target = $(this).attr('url'))) {
            $(this).addClass('disabled').attr('autocomplete', 'off').prop('disabled', true);
            myApp.showPreloader('正在提交...');
            $.ajax({
                dataType: "json",
                url: target,
                type: "get",
                success: function(data) {
                    myApp.hidePreloader();
                    if (data.status == undefined) {
                        alert(data);
                        $(that).removeClass('disabled').prop('disabled', false);
                    } else {
                        if (data.status == 1) {
                            if (data.url && !$(that).hasClass('no-refresh')) {
                                var message = data.info + ' 页面即将自动跳转~';
                            } else {
                                var message = data.info;
                            }
                            $.alertMessager(message, 'success');
                            setTimeout(function() {
                                $(that).removeClass('disabled').prop('disabled', false);
                                if ($(that).hasClass('no-refresh')) {
                                    return false;
                                }
                                if (data.url && !$(that).hasClass('no-forward')) {
                                    str = data.url;
                                    if(!(str.indexOf("http") === 0) && !(str.indexOf("file://") === 0)) {
                                        str = OpenCMF.DOMAIN + str;
                                    }
                                    location.href = data.url;
                                } else {
                                    location.reload();
                                }
                            }, 2000);
                        } else {
                            if (data.login == 1) {
                                window.location = data.url;
                            } else {
                                $.alertMessager(data.info, 'danger');
                            }
                            $(that).removeClass('disabled').prop('disabled', false);
                        }
                    }
                },
                error: function(e) {
                    myApp.hidePreloader();
                    if (e.responseText) {
                        alert(e.responseText);
                    }
                    $(that).removeClass('disabled').prop('disabled', false);
                }
            });
        }
        return false;
    });

    //ajax post submit请求
    $(document).on('click', '.ajax-post', function() {
        var target, query, form;
        var target_form = $(this).attr('target-form');
        var that = this;
        var nead_confirm = false;

        if (($(this).attr('type') == 'submit') || (target = $(this).attr('href')) || (target = $(this).attr('url'))) {
            form = $('.' + target_form);
            if ($(this).attr('hide-data') === 'true') { //无数据时也可以使用的功能
                form = $('.hide-data');
                query = form.serialize();
            } else if (form.get(0) == undefined) {
                return false;
            } else if (form.get(0).nodeName == 'FORM') {
                if ($(this).hasClass('confirm')) {
                    if (!confirm('确认要执行该操作吗?')) {
                        return false;
                    }
                }
                if ($(this).attr('url') !== undefined) {
                    target = $(this).attr('url');
                } else {
                    target = form.get(0).action;
                }
                query = form.serialize();
            } else if (form.get(0).nodeName == 'INPUT' || form.get(0).nodeName == 'SELECT' || form.get(0).nodeName == 'TEXTAREA') {
                form.each(function(k, v) {
                    if (v.type == 'checkbox' && v.checked == true) {
                        nead_confirm = true;
                    }
                });
                if (nead_confirm && $(this).hasClass('confirm')) {
                    if (!confirm('确认要执行该操作吗?')) {
                        return false;
                    }
                }
                query = form.serialize();
            } else {
                if ($(this).hasClass('confirm')) {
                    if (!confirm('确认要执行该操作吗?')) {
                        return false;
                    }
                }
                query = form.find('input,select,textarea').serialize();
            }

            $(that).addClass('disabled').attr('autocomplete', 'off').prop('disabled', true);
            myApp.showPreloader('正在提交...');
            $.ajax({
                dataType: "json",
                url: target,
                data: query,
                type: "post",
                success: function(data) {
                    myApp.hidePreloader();
                    if (data.status == undefined) {
                        alert(data);
                        $(that).removeClass('disabled').prop('disabled', false);
                    } else {
                        if (data.status == 1) {
                            if (data.url && !$(that).hasClass('no-refresh')) {
                                var message = data.info + ' 页面即将自动跳转~';
                            } else {
                                var message = data.info;
                            }
                            $.alertMessager(message, 'success');
                            setTimeout(function() {
                                if ($(that).hasClass('no-refresh')) {
                                    return false;
                                }
                                if (data.url && !$(that).hasClass('no-forward')) {
                                    str = data.url;
                                    if(!(str.indexOf("http") === 0) && !(str.indexOf("file://") === 0)) {
                                        str = OpenCMF.DOMAIN + str;
                                    }
                                    location.href = data.url;
                                } else {
                                    location.reload();
                                }
                            }, 2000);
                        } else {
                            myApp.hidePreloader();
                            $.alertMessager(data.info, 'danger');
                            $(that).removeClass('disabled').prop('disabled', false);
                            if($('.reload-verify').length > 0){
                                $('.reload-verify').click();
                            }
                        }
                    }
                },
                error: function(e) {
                    myApp.hidePreloader();
                    if (e.responseText) {
                        alert(e.responseText);
                    }
                    $(that).removeClass('disabled').prop('disabled', false);
                }
            });
        }
        return false;
    });
});
