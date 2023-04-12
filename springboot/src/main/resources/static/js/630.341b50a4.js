"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[630],{2630:function(e,r,t){t.r(r),t.d(r,{default:function(){return u}});var o=function(){var e=this,r=e._self._c;return r("div",{staticStyle:{width:"80%"}},[r("div",{staticStyle:{"margin-bottom":"30px"}},[e._v("新增图书")]),r("el-form",{ref:"ruleForm",attrs:{inline:!0,rules:e.rules,model:e.form,"label-width":"100px"}},[r("el-form-item",{attrs:{label:"名称",prop:"name"}},[r("el-input",{attrs:{placeholder:"请输入名称"},model:{value:e.form.name,callback:function(r){e.$set(e.form,"name",r)},expression:"form.name"}})],1),r("el-form-item",{attrs:{label:"描述",prop:"description"}},[r("el-input",{staticStyle:{width:"400px"},attrs:{type:"textarea",placeholder:"请输入描述"},model:{value:e.form.description,callback:function(r){e.$set(e.form,"description",r)},expression:"form.description"}})],1),r("el-form-item",{attrs:{label:"出版日期",prop:"publishDate"}},[r("el-date-picker",{attrs:{type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择出版日期"},model:{value:e.form.publishDate,callback:function(r){e.$set(e.form,"publishDate",r)},expression:"form.publishDate"}})],1),r("el-form-item",{attrs:{label:"作者",prop:"author"}},[r("el-input",{attrs:{placeholder:"请输入作者"},model:{value:e.form.author,callback:function(r){e.$set(e.form,"author",r)},expression:"form.author"}})],1),r("el-form-item",{attrs:{label:"出版社",prop:"publisher"}},[r("el-input",{attrs:{placeholder:"请输入出版社"},model:{value:e.form.publisher,callback:function(r){e.$set(e.form,"publisher",r)},expression:"form.publisher"}})],1),r("el-form-item",{attrs:{label:"分类",prop:"category"}},[r("el-cascader",{staticStyle:{width:"220px"},attrs:{props:{value:"name",label:"name"},options:e.categories},model:{value:e.form.categories,callback:function(r){e.$set(e.form,"categories",r)},expression:"form.categories"}})],1),r("el-form-item",{attrs:{label:"标准码",prop:"bookNo"}},[r("el-input",{attrs:{placeholder:"请输入标准码"},model:{value:e.form.bookNo,callback:function(r){e.$set(e.form,"bookNo",r)},expression:"form.bookNo"}})],1),r("el-form-item",{attrs:{label:"借书积分",prop:"cover"}},[r("el-input-number",{attrs:{min:10,max:30,label:"所需积分"},model:{value:e.form.score,callback:function(r){e.$set(e.form,"score",r)},expression:"form.score"}})],1),r("el-form-item",{attrs:{label:"数量",prop:"nums"}},[r("el-input",{attrs:{placeholder:"请输入数量"},model:{value:e.form.nums,callback:function(r){e.$set(e.form,"nums",r)},expression:"form.nums"}})],1),r("br"),r("el-form-item",{attrs:{label:"封面",prop:"cover"}},[r("el-upload",{staticClass:"avatar-uploader",attrs:{action:"http://localhost:9090/api/book/file/upload?token="+this.admin.token,"show-file-list":!1,"on-success":e.handleCoverSuccess}},[e.form.cover?r("img",{staticClass:"avatar",attrs:{src:e.form.cover}}):r("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1)],1),r("div",{staticStyle:{"text-align":"center","margin-top":"30px"}},[r("el-button",{attrs:{type:"primary",size:"medium"},on:{click:e.save}},[e._v("提交")])],1)],1)},a=[],l=(t(1703),t(4471)),s=t(680),i={name:"AddBook",data(){const e=(e,r,t)=>{r=parseInt(r),(r<0||r>=1e3)&&t(new Error("请输入大于等于0小于1000的整数")),t()};return{admin:s.Z.get("admin")?JSON.parse(s.Z.get("admin")):{},form:{score:10,cover:""},categories:[],rules:{name:[{required:!0,message:"请输入图书名称",trigger:"blur"}],bookNo:[{required:!0,message:"请输入图书标准码",trigger:"blur"}],score:[{validator:e,trigger:"blur"}],nums:[{required:!0,message:"请输入数量",trigger:"blur"},{validator:e,trigger:"blur"}]}}},created(){l.Z.get("/category/tree").then((e=>{this.categories=e.data}))},methods:{handleCoverSuccess(e){"200"===e.code&&(console.log(e.data),this.form.cover=e.data)},save(){this.$refs["ruleForm"].validate((e=>{e&&l.Z.post("/book/save",this.form).then((e=>{"200"===e.code?(this.$notify.success("新增成功"),this.$refs["ruleForm"].resetFields()):this.$notify.error(e.msg)}))}))}}},m=i,c=t(1001),n=(0,c.Z)(m,o,a,!1,null,null,null),u=n.exports}}]);
//# sourceMappingURL=630.341b50a4.js.map