window.fadeGridRows = () => {
    const rows = document.querySelectorAll("table tbody tr");
    rows.forEach((row, index) => {
        row.classList.remove("fade-in"); // reset
        // add staggered delay for nice effect
        setTimeout(() => row.classList.add("fade-in"), index * 40);
    });
};