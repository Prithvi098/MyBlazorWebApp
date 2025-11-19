/*window.loginWithJwt = async function (model) {

    const response = await fetch("/api/login/userlogin", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams(model)
    });

    if (!response.ok) {
        alert("Invalid login");
        return;
    }

    const data = await response.json();

    // save JWT
    localStorage.setItem("authToken", data.token);

    // redirect to home
    //window.location.href = "/home";
}*/

window.loginWithJwt = function (token) {
    localStorage.setItem("jwt", token);
    //location.href = "/home";
}


/*window.submitLoginForm = function (model) {
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
}*/