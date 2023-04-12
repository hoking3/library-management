"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[155],{8155:function(t,e,a){a.r(e),a.d(e,{default:function(){return c}});var r=function(){var t=this,e=t._self._c;return e("div",[e("div",{staticStyle:{"margin-bottom":"20px"}},[e("el-input",{staticStyle:{width:"240px"},attrs:{placeholder:"请输入图书名称"},model:{value:t.params.bookName,callback:function(e){t.$set(t.params,"bookName",e)},expression:"params.bookName"}}),e("el-input",{staticStyle:{width:"240px","margin-left":"5px"},attrs:{placeholder:"请输入图书标准码"},model:{value:t.params.bookNo,callback:function(e){t.$set(t.params,"bookNo",e)},expression:"params.bookNo"}}),e("el-input",{staticStyle:{width:"240px","margin-left":"5px"},attrs:{placeholder:"请输入用户名称"},model:{value:t.params.userName,callback:function(e){t.$set(t.params,"userName",e)},expression:"params.userName"}}),e("el-button",{staticStyle:{"margin-left":"5px"},attrs:{type:"primary"},on:{click:t.load}},[e("i",{staticClass:"el-icon-search"}),t._v(" 搜索")]),e("el-button",{staticStyle:{"margin-left":"5px"},attrs:{type:"warning"},on:{click:t.reset}},[e("i",{staticClass:"el-icon-refresh"}),t._v(" 重置")])],1),e("el-table",{attrs:{data:t.tableData,stripe:"","row-key":"id","default-expand-all":""}},[e("el-table-column",{attrs:{prop:"id",label:"编号",width:"80"}}),e("el-table-column",{attrs:{prop:"bookName",label:"图书名称"}}),e("el-table-column",{attrs:{prop:"bookNo",label:"图书标准码"}}),e("el-table-column",{attrs:{prop:"userNo",label:"会员码"}}),e("el-table-column",{attrs:{prop:"userName",label:"用户名称"}}),e("el-table-column",{attrs:{prop:"userPhone",label:"用户联系方式"}}),e("el-table-column",{attrs:{prop:"score",label:"所用积分"}}),e("el-table-column",{attrs:{prop:"createtime",label:"借出日期"}}),e("el-table-column",{attrs:{prop:"status",label:"借出状态"},scopedSlots:t._u([{key:"default",fn:function(a){return["已归还"===a.row.status?e("el-tag",{attrs:{type:"success"}},[t._v(t._s(a.row.status))]):t._e(),"已借出"===a.row.status?e("el-tag",{attrs:{type:"primary"}},[t._v(t._s(a.row.status))]):t._e()]}}])}),e("el-table-column",{attrs:{prop:"days",label:"借出天数"}}),e("el-table-column",{attrs:{prop:"returnDate",label:"归还日期"}}),e("el-table-column",{attrs:{prop:"note",label:"过期提醒",width:"87"},scopedSlots:t._u([{key:"default",fn:function(a){return["正常"===a.row.note?e("el-tag",{attrs:{type:"success"}},[t._v(t._s(a.row.note))]):t._e(),"即将到期"===a.row.note?e("el-tag",{attrs:{type:"primary"}},[t._v(t._s(a.row.note))]):t._e(),"已到期"===a.row.note?e("el-tag",{attrs:{type:"warning"}},[t._v(t._s(a.row.note))]):t._e(),"已过期"===a.row.note?e("el-tag",{attrs:{type:"danger"}},[t._v(t._s(a.row.note))]):t._e()]}}])}),e("el-table-column",{attrs:{label:"管理"},scopedSlots:t._u([{key:"default",fn:function(a){return[e("el-popconfirm",{staticStyle:{"margin-left":"5px"},attrs:{title:"您确定归还书籍吗？"},on:{confirm:function(e){return t.returnBooks(a.row)}}},["已借出"===a.row.status?e("el-button",{attrs:{slot:"reference",type:"primary"},slot:"reference"},[t._v("还书")]):t._e()],1)]}}])}),e("el-table-column",{attrs:{label:"操作"},scopedSlots:t._u([{key:"default",fn:function(a){return[e("el-popconfirm",{staticStyle:{"margin-left":"5px"},attrs:{title:"您确定删除这行数据吗？"},on:{confirm:function(e){return t.del(a.row.id)}}},[e("el-button",{attrs:{slot:"reference",type:"danger"},slot:"reference"},[t._v("删除")])],1)]}}])})],1),e("div",{staticStyle:{"margin-top":"20px"}},[e("el-pagination",{attrs:{background:"","current-page":t.params.pageNum,"page-size":t.params.pageSize,layout:"prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1)],1)},l=[],o=a(4471),s=a(680),n={name:"BorrowList",data(){return{admin:s.Z.get("admin")?JSON.parse(s.Z.get("admin")):{},tableData:[],total:0,params:{pageNum:1,pageSize:10,name:"",bookNo:""}}},created(){this.load()},methods:{load(){o.Z.get("/borrow/page",{params:this.params}).then((t=>{"200"===t.code&&(this.tableData=t.data.list,this.total=t.data.total)}))},reset(){this.params={pageNum:1,pageSize:10,bookName:"",bookNo:"",userName:""},this.load()},handleCurrentChange(t){this.params.pageNum=t,this.load()},del(t){o.Z["delete"]("/borrow/delete/"+t).then((t=>{"200"===t.code?(this.$notify.success("删除成功"),this.load()):this.$notify.error(t.msg)}))},returnBooks(t){o.Z.post("/borrow/saveReturn",t).then((t=>{"200"===t.code?(this.$notify.success("还书成功"),this.load()):this.$notify.error(t.msg)}))}}},p=n,i=a(1001),u=(0,i.Z)(p,r,l,!1,null,"4f3aa2f2",null),c=u.exports}}]);
//# sourceMappingURL=155.d6848c03.js.map