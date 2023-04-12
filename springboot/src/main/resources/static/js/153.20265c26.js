"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[153],{7153:function(e,r,t){t.r(r),t.d(r,{default:function(){return u}});var l=function(){var e=this,r=e._self._c;return r("div",{staticStyle:{width:"80%"}},[r("div",{staticStyle:{"margin-bottom":"30px"}},[e._v("新增用户")]),r("el-form",{ref:"ruleForm",attrs:{inline:!0,model:e.form,rules:e.rules,"label-width":"100px"}},[r("el-form-item",{attrs:{label:"姓名",prop:"name"}},[r("el-input",{attrs:{placeholder:"请输入姓名"},model:{value:e.form.name,callback:function(r){e.$set(e.form,"name",r)},expression:"form.name"}})],1),r("el-form-item",{attrs:{label:"年龄",prop:"age"}},[r("el-input",{attrs:{placeholder:"请输入年龄"},model:{value:e.form.age,callback:function(r){e.$set(e.form,"age",r)},expression:"form.age"}})],1),r("el-form-item",{attrs:{label:"性别"}},[r("el-radio",{attrs:{label:"男"},model:{value:e.form.sex,callback:function(r){e.$set(e.form,"sex",r)},expression:"form.sex"}},[e._v("男")]),r("el-radio",{attrs:{label:"女"},model:{value:e.form.sex,callback:function(r){e.$set(e.form,"sex",r)},expression:"form.sex"}},[e._v("女")])],1),r("el-form-item",{attrs:{label:"联系方式",prop:"phone"}},[r("el-input",{attrs:{placeholder:"请输入联系方式"},model:{value:e.form.phone,callback:function(r){e.$set(e.form,"phone",r)},expression:"form.phone"}})],1),r("el-form-item",{attrs:{label:"地址",prop:"address"}},[r("el-input",{attrs:{placeholder:"请输入地址"},model:{value:e.form.address,callback:function(r){e.$set(e.form,"address",r)},expression:"form.address"}})],1)],1),r("div",{staticStyle:{"text-align":"center","margin-top":"30px"}},[r("el-button",{attrs:{type:"primary",size:"medium"},on:{click:e.save}},[e._v("提交")])],1)],1)},s=[],a=(t(1703),t(4471)),o={name:"AddUser",data(){const e=(e,r,t)=>{if(!r)return t(new Error("年龄不能为空"));/^[0-9]+$/.test(r)||t(new Error("请输入数字值")),(parseInt(r)>120||parseInt(r)<=0)&&t(new Error("请输入合理的年龄")),t()},r=(e,r,t)=>{/^[1][3,4,5,6,7,8,9][0-9]{9}$/.test(r)||t(new Error("请输入合法的手机号")),t()};return{form:{sex:"男"},rules:{name:[{required:!0,message:"请输入姓名",trigger:"blur"}],age:[{validator:e,trigger:"blur"}],phone:[{validator:r,trigger:"blur"}]}}},methods:{save(){this.$refs["ruleForm"].validate((e=>{e&&a.Z.post("/user/save",this.form).then((e=>{"200"===e.code?(this.$notify.success("新增成功"),this.$refs["ruleForm"].resetFields()):this.$notify.error(e.msg)}))}))}}},n=o,i=t(1001),m=(0,i.Z)(n,l,s,!1,null,null,null),u=m.exports}}]);
//# sourceMappingURL=153.20265c26.js.map