/* Add here all your JS customizations */
(function () {
    function enforceScrollToTopAccessibility() {
        var scrollToTopButtons = document.querySelectorAll("a.scroll-to-top, .scroll-to-top");
        scrollToTopButtons.forEach(function (btn) {
            if (!btn.getAttribute("aria-label")) {
                btn.setAttribute("aria-label", "Scroll to Top");
            }
            if (!btn.getAttribute("title")) {
                btn.setAttribute("title", "Scroll to Top");
            }
            if (!btn.querySelector(".sr-only")) {
                var srSpan = document.createElement("span");
                srSpan.className = "sr-only";
                srSpan.textContent = "Scroll to Top";
                btn.appendChild(srSpan);
            }
        });
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", function () {
            enforceScrollToTopAccessibility();
            setInterval(enforceScrollToTopAccessibility, 300);
        });
    } else {
        enforceScrollToTopAccessibility();
        setInterval(enforceScrollToTopAccessibility, 300);
    }
})();