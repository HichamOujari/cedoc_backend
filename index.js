const express = require('express');
const bodyParser= require('body-parser');
const app = express();
const cors = require("cors");
const GetUser = require('./controllers/user/getUser');
const AddUser = require('./controllers/user/addUser');
const Import = require('./controllers/user/uploadExcel');
const DoctPreselected = require("./controllers/user/doctPreselect");
const OldDoct = require("./controllers/user/oldDoct");
const GetEnsg = require("./controllers/user/getEnsg");
const GetStructure = require("./controllers/structure/getStructure");
const GetGrade = require("./controllers/structure/getGrade");
const AddEnsg = require("./controllers/user/addEnsg");
const DeleteEnsg = require("./controllers/user/deleteEnsg");
const GetEnsgById = require("./controllers/user/getEnsgById");
const UpdateEnsg = require("./controllers/user/updateEnsg");
const AddStructure = require("./controllers/structure/addStructure");
const GetNewChef = require("./controllers/user/GetNewChef");
const GetStructureByType = require("./controllers/structure/getStructureByType");
const DeleteStruct = require("./controllers/structure/deleteStruct");
const getDashInfos = require("./controllers/dashInfos");
const GetMembers = require("./controllers/structure/getMember");
const getDoctInfos = require("./controllers/user/getDoctInfos");
const uploadFileInscription = require("./controllers/document/uploadFileInscription")
const getDoctFiles = require("./controllers/user/getDoctFiles");
const getEnsgAccountInfos = require("./controllers/user/getEnsgAccountInfos");
const selectPretDoct = require("./controllers/user/selectPretDoct");
const getEnsgSameStruct = require("./controllers/user/getEnsgSameStruct");

app.use(cors());
app.use(express.json());
app.use(bodyParser.json());

app.post("/auth/login",(request,response)=>{
    GetUser(response,request);
})

app.post("/auth/signup",(request,response)=>{
    AddUser(response,request)
})

app.post("/auth/importExcel",(request,response)=>{
    Import(response,request)
})

app.get("/auth/doctPreselected",(request,response)=>{
    DoctPreselected(response,request)
})
app.post("/auth/selectPretDoct",(request,response)=>{
    selectPretDoct(response,request)
})

app.get("/auth/OldDoct",(request,response)=>{
    OldDoct(response,request)
})
app.get("/auth/Ensg",(request,response)=>{
    GetEnsg(response,request)
})
app.post("/auth/GetEnsg",(request,response)=>{
    GetEnsgById(response,request)
})

app.post("/auth/getEnsgSameStruct",(request,response)=>{
    getEnsgSameStruct(response,request)
})

app.post("/auth/GetMembers",(request,response)=>{
    GetMembers(response,request)
})
app.post("/auth/DeleteEnsg",(request,response)=>{
    DeleteEnsg(response,request)
})

app.post("/auth/getDoctInfos",(request,response)=>{
    getDoctInfos(response,request)
})
app.post("/auth/getDoctFiles",(request,response)=>{
    getDoctFiles(response,request)
})


app.post("/auth/UpdateEnsg",(request,response)=>{
    UpdateEnsg(response,request)
})
app.post("/auth/uploadFileInscription",(request,response)=>{
    uploadFileInscription(response,request)
})



app.get("/auth/getGrade",(request,response)=>{
    GetGrade(response,request)
})
app.get("/auth/GetNewChef",(request,response)=>{
    GetNewChef(response,request)
})
app.post("/auth/addEnsg",(request,response)=>{
    AddEnsg(response,request)
})




app.post("/auth/getDashInfos",(request,response)=>{
    getDashInfos(response,request)
})
app.post("/auth/getEnsgAccountInfos",(request,response)=>{
    getEnsgAccountInfos(response,request)
})



app.get("/auth/listStruct",(request,response)=>{
    GetStructure(response,request)
})
app.post("/auth/GetStructureByType",(request,response)=>{
    GetStructureByType(response,request)
})
app.post("/auth/AddStructure",(request,response)=>{
    AddStructure(response,request)
})
app.post("/auth/DeleteStruct",(request,response)=>{
    DeleteStruct(response,request)
})


app.listen(3001, ()=>{
    console.log('app running on port 3001');
})