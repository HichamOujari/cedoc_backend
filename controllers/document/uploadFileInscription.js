let connection = require("../../config/db");
const exec = require("../exec")
var FormData = require('form-data');

async function uploadFileInscription (res,req){
    var formData = new FormData(req.body.data)
    const idUser = formData.get('userID')
    formData.delete("userID")
    console.log(formData.keys())
    console.log("id user : "+idUser)
    try{
        /*var rslt;
        rslt = await exec('select these.id from these,user where user.idUser=these.DoctorantID and user.id=?',[idUser])
        if(rslt.error==true || rslt.length==0){
            res.send({
                error:true,
                message:rslt.messgae.sqlMessage
            })
        }else{
            const idThese = rslt[0].id
            console.log(idThese)
            files.map(async (ele,index)=>{
                /*rslt = await exec('insert into document values(null,?,?,?)',[ele.nom,ele.data,idThese])
                if(rslt.error===true){
                    res.send({
                        error:true,
                        message:rslt.messgae.sqlMessage
                    })
                }
            })
            res.send({
                error:false,
                message:"done with success!"
            })
        }*/
    }catch(err){
        res.send({
            message:err.message.sqlMessage,
            error:true
        })
    }
};

module.exports = uploadFileInscription;