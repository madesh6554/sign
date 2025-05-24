const express = require('express');
const path = require('path');
const router = express.Router();

// Serve static files
router.use(express.static(path.join(__dirname, 'dist/sign-translate/browser')));

// Handle all routes by serving index.html
router.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist/sign-translate/browser/index.html'));
});

module.exports = router;
