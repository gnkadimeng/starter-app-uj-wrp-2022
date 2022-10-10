import * as sqlite from 'sqlite';
import sqlite3 from 'sqlite3';
import express from 'express';

const app = express();

app.use(express.static('public'));
app.use(express.json());

const  db = await  sqlite.open({
    filename:  './database1.db',
    driver:  sqlite3.Database
});

//add above the db migrate command / code 

await db.exec(`PRAGMA foreign_keys = ON;`);

await db.migrate();

const PORT = process.env.PORT || 8080;



app.get('/api/motorist', async function(req, res) {
    const motorist = await db.all(`select * from motorist`);
    res.json({
        motorist
    });
});

app.get('/api/licences', async function(req, res){
    const licences = await db.all(`SELECT * FROM drives_licence`)
    res.json({
        licences
    })
})

app.get('/api/vehicles', async function(req, res){
    const vehicles = await  db.all(`select * from vehicles`)
    res.json({
        vehicles
    })
});




app.post("/api/VehicleR", (req, res, next) => {
    var errors=[]
    if (!req.body.model){
        errors.push("No model specified");
    }
    if (!req.body.Transmission){
        errors.push("No Trasmission specified");
    }
    if (errors.length){
        res.status(400).json({"error":errors.join(",")});
        return;
    }
    var data = {
        model: req.body.model,
        Transmission: req.body.Transmission,
        Engine_number: req.body.Engine_number,
        make: req.body.make,
        release_year: req.body.release_year,
        color: req.body.color, 
        radio_make: req.body.radio_make,
        speedio_reading: req.body.speedio_reading,
        chassins_no: req.body.chassins_no,
        accessories: req.body.accessories
    }
    var sql ='INSERT INTO vehicles (release_year, color,model, Transmission, Engine_number,accessories,chassins_no,speedio_reading,make) VALUES (?,?,?,?,?,?,?,?,?)'
    var params =[data.model, data.Transmission, data.Engine_number, data.accessories, data.chassins_no, data.color, data.radio_make, data.release_year, data.make, data.speedio_reading]
    db.run(sql, params, function (err, result) {
        if (err){
            res.status(400).json({"error": err.message})
            return;
        }
        res.json({
            "message": "success",
            "data": data,
            "id" : this.vehiclesid 
        })
    });
})


app.listen(PORT, function(){
    console.log(`app started on ${PORT}`)
})


// find all the make of cars

// find out how many vollkswagen models there are

// insert a new toyota model - an Toyota Hilux that costs 275000

// update the price for a nissan x-trail to 140000

// find all the departments

// list the total total sales for each department

// find the department with the highest sales

// find the department with the lowes sales

