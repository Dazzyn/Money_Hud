window.addEventListener('message', (event) => {
    const data = event.data;

    if (data.type === 'all') {
        document.getElementById('money-output').textContent = data.money;
    }
});