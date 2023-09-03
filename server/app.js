const express = require('express');

const app = express();

app.get('/', (req, res) => {
    return res.status(200).send({});
})

app.listen(3000, () => {
    console.log('The server was started at ::3000');
});