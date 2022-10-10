

app.post("/api/VehicleR/", (req, res, next) => {
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
        model: req.body.Engine_number,
        Transmission: req.body.Transmission,
        Engine_number: req.body.Engine_number
    }
    var sql ='INSERT INTO vehicles (model, Transmission, Engine_number) VALUES (?,?,?)'
    var params =[data.model, data.Transmission, data.Engine_number]
    db.run(sql, params, function (err, result) {
        if (err){
            res.status(400).json({"error": err.message})
            return;
        }
        res.json({
            "message": "success",
            "data": data,
            "id" : this.lastID
        })
    });
});