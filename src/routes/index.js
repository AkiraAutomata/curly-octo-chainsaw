const express = require('express');
const router = express.Router();
const userRoutes = require('./user.routes');

// User routes
router.use('/users', userRoutes);

// Add more routes here as needed

module.exports = router;
