const express = require("express");
const bodyParser = require("body-parser");
const axios = require("axios");

const app = express();

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.render("form");
});

app.post("/submit", async (req, res) => {
  const data = {
    itemName: req.body.itemName,
    itemDescription: req.body.itemDescription
  };

  try {
    await axios.post("http://backend:5000/submittodoitem", data);
    res.send("Data sent to Flask backend!");
  } catch (error) {
    res.send("Error connecting to backend");
  }
});

app.listen(3000, () => {
  console.log("Frontend running on port 3000");
});
