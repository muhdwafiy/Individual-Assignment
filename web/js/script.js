/*
    JavaScript for Personal Profile Web Application
    @author wafiy
*/

// ---------- Form page (index.html) ----------
var form = document.getElementById("profileForm");

if (form) {
    // Check all fields before submitting
    form.addEventListener("submit", function (event) {
        if (!form.checkValidity()) {
            event.preventDefault();   // stop sending the form
            event.stopPropagation();
        }
        form.classList.add("was-validated");  // show Bootstrap red/green messages
    });

    // Reset the validation colours when "Clear Form" is clicked
    form.addEventListener("reset", function () {
        form.classList.remove("was-validated");
        document.getElementById("charCount").textContent = "0";
    });

    // Character counter for the self-introduction
    var intro = document.getElementById("intro");
    var charCount = document.getElementById("charCount");

    intro.addEventListener("input", function () {
        charCount.textContent = intro.value.length;
    });
}

// ---------- Profile page (profile.jsp) ----------
var greeting = document.getElementById("greeting");

if (greeting) {
    var hour = new Date().getHours();
    var message;

    if (hour < 12) {
        message = "Good morning!";
    } else if (hour < 18) {
        message = "Good afternoon!";
    } else {
        message = "Good evening!";
    }

    greeting.textContent = message + " Your profile was submitted successfully.";
}