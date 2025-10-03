// scripts/compile-shaders.js
const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process')

const slangcPath = 'path/to/your/slangc'; // <-- IMPORTANT: UPDATE THIS PATH
