let connection = require("../../config/db");
const exec = require("../exec")

async function UpdateEnsg (res,req){
    const id = req.body.id
    const nom = req.body.nom;
    const prenom = req.body.prenom;
    const email = req.body.email;
    const tele = req.body.tele;
    const specialite = req.body.specialite;
    const grade = req.body.grade;
    const structure = req.body.structure;

    try{
        var rslt = await exec('update enseignant set nom=? , prenom=? , email=? , tele=? , specialite=? , grade=? ,  stucture_recherche = ? where id=?',[nom,prenom,email,tele,specialite,grade,structure=="null"?null:structure,id])
        if(rslt.error===true){
            res.send({
                error:true,
                message:rslt.messgae.sqlMessage
            })
        }else{
            rslt = await exec('update user set email=? where idUser=?',[email,id])
            if(rslt.error===true){
                res.send({
                    error:true,
                    message:rslt.messgae.sqlMessage
                })
            }else{
                res.send({
                    error:false,
                    message:"succ"
                })
            }
        }
    }catch(err){
        res.send({
            message:err.message.sqlMessage,
            error:true
        })
    }
};

module.exports = UpdateEnsg;