"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[766],{4766:function(e,r,t){t.r(r),t.d(r,{default:function(){return u}});var l=function(){var e=this,r=e._self._c;return r("div",{staticStyle:{width:"80%"}},[r("div",{staticStyle:{"margin-bottom":"30px"}},[e._v("新增管理员")]),r("el-form",{ref:"ruleForm",attrs:{inline:!0,model:e.form,rules:e.rules,"label-width":"100px"}},[r("el-form-item",{attrs:{label:"用户名",prop:"username"}},[r("el-input",{attrs:{placeholder:"请输入姓名"},model:{value:e.form.username,callback:function(r){e.$set(e.form,"username",r)},expression:"form.username"}})],1),r("el-form-item",{attrs:{label:"联系方式",prop:"phone"}},[r("el-input",{attrs:{placeholder:"请输入联系方式"},model:{value:e.form.phone,callback:function(r){e.$set(e.form,"phone",r)},expression:"form.phone"}})],1),r("el-form-item",{attrs:{label:"邮箱",prop:"email"}},[r("el-input",{attrs:{placeholder:"请输入地址"},model:{value:e.form.email,callback:function(r){e.$set(e.form,"email",r)},expression:"form.email"}})],1)],1),r("div",{staticStyle:{"text-align":"center","margin-top":"30px"}},[r("el-button",{attrs:{type:"primary",size:"medium"},on:{click:e.save}},[e._v("提交")])],1)],1)},s=[],a=(t(1703),t(4471)),o={name:"AddAdmin",data(){const e=(e,r,t)=>{/^[1][3,4,5,6,7,8,9][0-9]{9}$/.test(r)||t(new Error("请输入合法的手机号")),t()};return{form:{},rules:{username:[{required:!0,message:"请输入用户名",trigger:"blur"},{min:3,max:10,message:"长度在3-10个字符",trigger:"blur"}],phone:[{validator:e,trigger:"blur"}]}}},methods:{save(){this.$refs["ruleForm"].validate((e=>{e&&a.Z.post("/admin/save",this.form).then((e=>{"200"===e.code?(this.$notify.success("新增成功"),this.$refs["ruleForm"].resetFields()):this.$notify.error(e.msg)}))}))}}},i=o,n=t(1001),m=(0,n.Z)(i,l,s,!1,null,null,null),u=m.exports}}]);
//# sourceMappingURL=766.e5006128.js.map