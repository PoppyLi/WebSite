<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Website</title>
    <?php $this->load->view('admin/common/link');?>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">网站管理系统登录</h3>
                    </div>
                    <div class="panel-body">
                        <?php echo form_open('admin/login');?>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="用户名" name="username" value="<?php echo set_value('username');?>" type="input" autofocus>&nbsp;<?php echo form_error('username');?>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="密码" name="password" type="password">&nbsp;<?php echo form_error('password');?>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="1">记住登录
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="登录">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php $this->load->view('admin/common/footer');?>
</body>

</html>
