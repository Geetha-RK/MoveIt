import pkg from 'pg'; // Import the entire module as pkg
const { Pool } = pkg; // Destructure to get Pool
import dotenv from 'dotenv';

dotenv.config();

const pool = new Pool({
    user: process.env.DB_USER,        
    password: process.env.DB_PASSWORD, 
    host: process.env.HOST,
    port: process.env.DB_PORT,
    database: process.env.DATABASE
});

export default pool;