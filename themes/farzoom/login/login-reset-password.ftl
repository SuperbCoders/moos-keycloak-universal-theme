<#import "secondary-template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <div class="form-group ">
            <div class="input-blocks">
                <div class="restore-pass__title">Восстановление пароля</div>
                <div class="form-group">
                    <input type="email" class="form-control form-control--transporent" id="username" name="username" autofocus aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="order">
<#--                    <button type="submit" class="btn btn-block btn-white">Восстановить</button>-->
                    <button type="submit" name="login">Восстановить</button>
                </div>
            </div>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
