window.submitLoginForm = function (model) {
    var f = document.createElement('form');
    f.method = 'post';
    f.action = '/api/login/userlogin';

    for (let key in model) {
        if (model.hasOwnProperty(key)) {
            let hidden = document.createElement('input');
            hidden.type = 'hidden';
            hidden.name = key;
            hidden.value = model[key];
            f.appendChild(hidden);
        }
    }

    document.body.appendChild(f);
    f.submit();
}