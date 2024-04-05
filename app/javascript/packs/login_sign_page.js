
// Toggle Password Visibility

document.addEventListener('DOMContentLoaded', function () {
  const togglePassword = document.querySelector("#show-password-icon");
  const password = document.querySelector("#password");

  // Check if the elements exist before adding event listeners
  if (togglePassword && password) {
    togglePassword.addEventListener("click", function () {
        
  		// toggle the type attribute
      const type = password.getAttribute("type") === "password" ? "text" : "password";
      password.setAttribute("type", type);
      
      // toggle the icon
      togglePassword.classList.toggle("bi-eye-slash");
      togglePassword.classList.toggle("bi-eye");
    });
  }
});
