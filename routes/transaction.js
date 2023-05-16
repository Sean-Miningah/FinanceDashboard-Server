import express from "express";
import Transaction from "../models/Transaction.js";


const router = express.Router();

router.get("/transactions", async (req, res) => {
  try {
    const products = await Transaction.find()
      .limit(50)
      .sort({ createdon: -1 });
    res.status(200).json(products);
  } catch (error) {
    res.status(404).json({ message: error.message });
  }
});

export default router;