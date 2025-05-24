const express = require('express');
const path = require('path');
const app = express();

// Serve static files from src directory
app.use(express.static('src'));

// Handle all routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'src/index.html'));
});

// Start server
const port = process.env.PORT || 4200;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
}); 