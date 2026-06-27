// Micro-interaction for buttons
document.querySelectorAll('button').forEach(button => {
    button.addEventListener('mousedown', () => {
        button.style.transform = 'scale(0.98)';
    });
    button.addEventListener('mouseup', () => {
        button.style.transform = '';
    });
    button.addEventListener('mouseleave', () => {
        button.style.transform = '';
    });
});

// Simple scroll behavior for header
window.addEventListener('scroll', () => {
    const header = document.querySelector('header');
    if (window.scrollY > 20) {
        header.classList.add('shadow-md');
        header.classList.add('h-16');
        header.classList.remove('h-20');
    } else {
        header.classList.remove('shadow-md');
        header.classList.remove('h-16');
        header.classList.add('h-20');
});

// Newsletter Form Validation and UX
document.addEventListener('DOMContentLoaded', () => {
    const newsletterForms = document.querySelectorAll('.newsletter-form');
    
    newsletterForms.forEach(form => {
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            const btn = form.querySelector('button[type="submit"]') || form.querySelector('button') || form.querySelector('a');
            const input = form.querySelector('input[type="email"]');
            
            if (!input || !input.validity.valid) {
                input.reportValidity();
                return;
            }
            
            if(btn) {
                const originalText = btn.innerHTML;
                btn.disabled = true;
                btn.innerHTML = '<span class="material-symbols-outlined animate-spin" style="animation: spin 1s linear infinite; display: inline-block;">sync</span> Validando...';
                
                setTimeout(() => {
                    btn.classList.add('bg-green-600', 'text-white', 'border-green-600');
                    btn.innerHTML = '<span class="material-symbols-outlined">check_circle</span> ¡Suscrito!';
                    form.reset();
                    
                    setTimeout(() => {
                        btn.disabled = false;
                        btn.classList.remove('bg-green-600', 'text-white', 'border-green-600');
                        btn.innerHTML = originalText;
                    }, 3000);
                }, 1500);
            }
        });
    });
});
