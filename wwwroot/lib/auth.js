window.jwtStorage = {
    getToken: function () {
        return window.localStorage.getItem('jwtToken'); // or sessionStorage
    },
    setToken: function (token) {
        if (token) window.localStorage.setItem('jwtToken', token);
        else window.localStorage.removeItem('jwtToken');
    },
    removeToken: function () {
        window.localStorage.removeItem('jwtToken');
    }
};