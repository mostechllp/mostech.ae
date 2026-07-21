(function () {
    function initFloatingCallButton() {
        // 1. Create Call Button if not existing
        var callBtn = document.getElementById("floating-call-button");
        if (!callBtn) {
            callBtn = document.createElement("a");
            callBtn.id = "floating-call-button";
            callBtn.href = "tel:+971581730112";
            callBtn.className = "floating-call-btn";
            callBtn.setAttribute("aria-label", "Call Now");
            callBtn.setAttribute("title", "Call Now");
            callBtn.innerHTML = '<i class="fa fa-phone"></i>';
            document.body.appendChild(callBtn);
        }

        // 2. Reposition GetButton WhatsApp widget above the Call button
        var getBtnElements = document.querySelectorAll(
            '#wh-widget-send-button, .wh-widget-send-button-wrapper, [id*="wh-widget"], [class*="wh-widget"]'
        );
        var isMobile = window.innerWidth <= 768;
        var newBottom = isMobile ? "85px" : "95px";

        getBtnElements.forEach(function (el) {
            if (el.style.bottom !== newBottom) {
                el.style.setProperty("bottom", newBottom, "important");
            }
        });
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", function () {
            initFloatingCallButton();
            setInterval(initFloatingCallButton, 200);
        });
    } else {
        initFloatingCallButton();
        setInterval(initFloatingCallButton, 200);
    }
})();
