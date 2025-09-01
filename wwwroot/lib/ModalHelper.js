window.bootstrapModalHelper = {
    show: function (modalId) {
        var modalEl = document.getElementById(modalId);
        if (modalEl) {
            var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
            modal.show();
        }
    },
    hide: function (modalId) {
        var modalEl = document.getElementById(modalId);
        if (modalEl) {
            var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
            modal.hide();
        }
    }
};