let connection = require("../../config/db");

const getEnsgSameStruct = (res,req)=>{   
    const userid = req.body.userid
    connection.query("select enseignant.id,concat(enseignant.nom,' ',enseignant.prenom) as nom from enseignant,user where enseignant.id=user.idUser and enseignant.stucture_recherche in (select enseignant.stucture_recherche from enseignant,user where user.idUser=enseignant.id and user.id=?) and (user.type=1 or user.type=2)",[userid],(err,result)=>{
        if(err){
            res.send({
                error:true,
                msg:err
            })
        }else{
            res.send({
                error:false,
                data:result
            });
        }
    })
};


module.exports = getEnsgSameStruct;