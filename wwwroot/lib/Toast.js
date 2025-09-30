window.RemoveToast = (selector) => {
    const el = document.getElementById(selector);
    if (el) {
        el.remove();
    }
};