import * as express from 'express';

const app = express();

app.use(express.json());
app.use(express.urlencoded());

//Dummy homepage
app.get('/', (req, res) => {
    res.end('Everything works.');
});

app.listen(process.env.APP_PORT, () => {
    console.log(`REST API at port ${process.env.APP_PORT}/`);
});
