import express from 'express';
import cors from 'cors';
import pool from './db.js';
import dotenv from 'dotenv';

dotenv.config();
const app = express();

const PORT = process.env.PORT ?? 8000
//get all todos
app.get('/todos',async(req,res)=>{
    try {
        const result = await pool.query('SELECT * FROM todos'); 
        res.json(result.rows);
    } catch (error) {
        console.error(error);
    }
})
app.listen(PORT,()=>console.log(`server running on PORT http://localhost:${PORT}`))