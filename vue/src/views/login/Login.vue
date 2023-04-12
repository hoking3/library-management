<template>
  <div class="wrapper">
    <el-card class="cover" v-if="loginAdmin.id">
      <slide-verify :l="42"
                    :r="10"
                    :w="310"
                    :h="155"
                    :accuracy="5"
                    :imgs="picArray"
                    slider-text="请向右滑动"
                    @success="onSuccess"
                    @fail="onFail"
                    @refresh="onRefresh"
      ></slide-verify>
    </el-card>
    <div style="color: ivory;text-align: center;font-size: 50px;height: 50px;margin-top: 50px;font-weight: bold;text-shadow: 0 0 3px dodgerblue">欢迎使用图书管理系统</div>
    <div class="box" >
      <div style="margin: 30px; text-align: center; font-size: 30px; font-weight: bold; color: dodgerblue">登 录</div>
      <el-form :model="admin" :rules="rules" ref="loginForm" @keyup.enter.native="login">
        <el-form-item prop="username">
          <el-input placeholder="请输入账号" prefix-icon="el-icon-user" size="medium" v-model="admin.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input placeholder="请输入密码" show-password prefix-icon="el-icon-lock" size="medium"
                    v-model="admin.password"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button style="width: 100%" size="medium" type="primary" @click="login">登录</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
import request from "@/utils/request";
import Cookies from 'js-cookie'

export default {
  name: 'LOGIN',
  data() {
    return {
      loginAdmin: {},
      admin: {},
      rules: {
        username: [
          {required: true, message: '请输入用户名', trigger: 'blur'},
          {min: 3, max: 10, message: '长度在3-10个字符', trigger: 'blur'}
        ],
        password: [
          {required: true, message: '请输入密码', trigger: 'blur'},
          {min: 3, max: 10, message: '长度在3-10个字符', trigger: 'blur'}
        ]
      },
      picArray: [
          require("../../../public/imgs/img.png"),
          require("../../../public/imgs/img4.png"),
          require("../../../public/imgs/img2.jpg"),
          require("../../../public/imgs/img3.jpg"),
      ]
    }
  },
  methods: {
    login() {
      this.$refs['loginForm'].validate((valid) => {
        if (valid) {
          request.post('/admin/login', this.admin).then(res => {
            if (res.code === '200') {
              this.loginAdmin = res.data  // 滑块组件就出现了
            } else {
              this.$notify.error(res.msg)
            }
          })
        }
      })
    },
    onSuccess() { // 滑块验证通过之后触发的
      Cookies.set('admin', JSON.stringify(this.loginAdmin))
      this.$notify.success("登录成功")
      this.$router.push('/')
    },
    onFail() {
      console.log('onFail')
    },
    onRefresh() {
      console.log('refresh')
    }
  }
}
</script>

<style>
.box {
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(5px);
  background-color: rgba(255, 245, 247, 0.3);
  width: 500px;
  height: 400px;
  border-radius: 10px;
  margin: 50px auto;
  padding: 50px
}

.cover {
  width: fit-content;
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(5px);
  background-color: rgba(255, 245, 247, 0.3);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 10px;
  z-index: 1000;
}

.wrapper {
  height: 100vh;
  background: url("../../../public/img.jpg") no-repeat center center;
  background-size: 100% 100%;
  overflow: hidden;
}
</style>