/**
 * 
 */

 function toggleForms() {
  const loginForm = document.getElementById('loginForm');
  const registerForm = document.getElementById('registerForm');
  const recoveryForm = document.getElementById('recoveryForm');
  loginForm.classList.toggle('hidden');
  registerForm.classList.toggle('hidden');
  recoveryForm.classList.add('hidden');
  clearMessages();
}

function showRecovery() {
  document.getElementById('loginForm').classList.add('hidden');
  document.getElementById('registerForm').classList.add('hidden');
  document.getElementById('recoveryForm').classList.remove('hidden');
  clearMessages();
}

function backToLogin() {
  document.getElementById('loginForm').classList.remove('hidden');
  document.getElementById('registerForm').classList.add('hidden');
  document.getElementById('recoveryForm').classList.add('hidden');
  clearMessages();
}

function clearMessages() {
  document.getElementById('message').textContent = '';
  document.getElementById('recoveryMessage').textContent = '';
}
