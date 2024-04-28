const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000; // 你可以根据需要设置端口号
const { getSixs } = require("./services/index");

app.get("/", async (req, res) => {
  try {
    res.send("hello world");
  } catch (error) {
    res.status(500).json({ error: "Failed to fetch data from external API" });
  }
});

app.get("/getSixs", async (req, res) => {
  try {
    const { data } = await getSixs();
    res.json(data);
  } catch (error) {
    res.status(500).json({ error: "Failed to fetch data from external API" });
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}`);
});
