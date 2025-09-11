window.startToastProgress = (selector, duration) => {
    const el = document.querySelector(selector);
    if (!el) return;

    el.style.transition = "none";
    el.style.width = "100%";

    // force reflow
    void el.offsetWidth;

    // apply shrinking animation
    el.style.transition = `width ${duration}ms linear`;
    el.style.width = "0%";
};