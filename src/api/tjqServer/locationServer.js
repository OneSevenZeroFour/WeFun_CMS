var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    user: 'root',
    password: '',
    database: 'location'
});
connection.connect();

var obj = {
    getLocationMysql: (app) => {
        app.post('/province', (req, res) => {
            res.append("Access-Control-Allow-Origin", "*");
            //发送省的数据库

            connection.query('select * from district where parent_id="0"', (error, results, fields) => {
                if (error) throw error;

                // console.log(results);
                res.send(JSON.stringify(results));

                // connection.end();
            });

        });
        app.post('/city', (req, res) => {
            res.append("Access-Control-Allow-Origin", "*");

            connection.query(`select id from district where name="${req.body.province}"`, (error, results, fields) => {
                if (error) throw error;
                connection.query(`select * from district where parent_id="${results[0].id}"`, (error, results, fields) => {
                    if (error) throw error;

                    res.send(JSON.stringify(results));
                });
            })
            // 根据获得的数据返回相应的城市
            // res.send('[1]');
        });
    }
};
module.exports = obj;