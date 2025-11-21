//window.submitLoginForm = function (model) {
//    var f = document.createElement('form');
//    f.method = 'post';
//    f.action = '/api/login/userlogin';

//    for (let key in model) {
//        if (model.hasOwnProperty(key)) {
//            let hidden = document.createElement('input');
//            hidden.type = 'hidden';
//            hidden.name = key;
//            hidden.value = model[key];
//            f.appendChild(hidden);
//        }
//    }

//    document.body.appendChild(f);
//    f.submit();
//}

window.submitLoginForm = async function (model) {
    try {
        const response = await fetch('/api/login/userlogin', {
            method: 'POST',
            credentials: 'include', // important so cookie is set
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(model)
        });

        if (!response.ok) {
            const err = await response.json().catch(() => null);
            window.dispatchEvent(new CustomEvent("loginError", { detail: err?.message || "Login failed" }));
            return;
        }

        const data = await response.json();

        // Store JWT for API calls
        localStorage.setItem("jwt_token", data.token);

        // Redirect to home using JS
        //window.location.href = "/home";
    }
    catch (err) {
        window.dispatchEvent(new CustomEvent("loginError", { detail: err.message }));
    }
};
