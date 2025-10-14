const canvas = document.getElementById('app-canvas');
const ctx = canvas.getContext('2d');

// Do these pixel do anything as they don't seem to scale when changed
canvas.width = 800;
canvas.height = 600;

ctx.fillStyle = 'cornflowerblue';
ctx.fillRect(20, 20, 150, 100);

console.log("Script loaded and rectangle should be drawn.")