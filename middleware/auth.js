const jwt = require('jsonwebtoken');
exports.authenticateToken = async (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];
  if (token == null) {
    return res.status(401).json({
      error: true,
      message: 'Invalid token',
    });
  }

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, user) => {
    if (err) {
      return res.status(403).json({
        error: true,
        message: err.message,
      });
    }
    req.user = user;
    next();
  });
};
