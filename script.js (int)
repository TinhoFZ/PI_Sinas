const filterButtons = document.querySelectorAll('.filter-buttons button');
const posts = document.querySelectorAll('.post');

filterButtons.forEach(button => {
  button.addEventListener('click', () => {
    filterButtons.forEach(btn => btn.classList.remove('active'));
    button.classList.add('active');

    const filter = button.textContent.toLowerCase();

    posts.forEach(post => {
      const type = post.dataset.type || 'texto';

      if (filter === 'todos' || filter === type) {
        post.style.display = 'block';
      } else {
        post.style.display = 'none';
      }
    });
  });
});

// Ativa filtro "Todos" ao carregar
document.querySelector('.filter-buttons button').click();

const postBtn = document.getElementById('postBtn');
const postBox = document.getElementById('postBox');



postBtn.addEventListener('click', () => {
  postBox.classList.toggle('hidden');
});
