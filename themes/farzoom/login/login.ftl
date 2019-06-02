<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
        <#if realm.password>
            <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="logo">
                    <img src="${url.resourcesPath}/img/form-logo.svg" alt="">
                </div>

                <div class="form-group ">
                    <div class="input-blocks">
                        <div class="form-group__row-input">
                            <label for="username">Имя пользователя</label>
                            <div class="ib ib-1">
<#--                                <input type="text" name="login" placeholder="Admin">-->
                                <input id="username" name="username" type="text" class="form-control form-control--login" aria-describedby="login" placeholder="Admin" autocomplete="off" aria-autocomplete="none">
                            </div>
<#--                            <input id="username" name="username" type="text" class="form-control form-control--login" aria-describedby="login" placeholder="<#if !realm.loginWithEmailAllowed>${msg('username')}<#elseif !realm.registrationEmailAsUsername>${msg('usernameOrEmail')}<#else>${msg('email')}</#if>" value="${(login.username!'')}" autocomplete="off" aria-autocomplete="none">-->
                        </div>
                        <div class="form-group__row-input">
                            <label for="password">Пароль</label>
                            <div class="ib ib-2">
<#--                                <input type="password" name="password" placeholder="023dfjJJnfn)2-fek2">-->
                                <input id="password" name="password" type="password" class="form-control form-control--password" aria-describedby="password" placeholder="${msg('password')}" autocomplete="off" aria-autocomplete="none">
                                <a href="#">
                                    <img src="${url.resourcesPath}/img/pass-aft-white.svg" alt="">
                                </a>
                            </div>
<#--                            <input id="password" name="password" type="password" class="form-control form-control--password" aria-describedby="password" placeholder="${msg('password')}" autocomplete="off" aria-autocomplete="none">-->
                        </div>
                    </div>
                </div>
                <div class="order">
                    <button class="" type="submit" name="login" id="kc-login">Вход</button>
<#--                    <button type="button">Вход</button>-->
                    <!--<button class="btn btn-dark btn-block">Вход с помощью Электронной подписи <span class="icon icon-chevron-right"></span></button>-->
                </div>
                <div class="forget">
                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}">Забыли пароль?</a>
                    </#if>
<#--                    <span>Забыли пароль?</span>-->
                </div>
<#--                <div class="forget">Забыли пароль?</div>-->

                <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                    <div class="are-new">
                        <span>Новый пользователь? </span>
                        <a tabindex="6" href="${url.registrationUrl}" title="Регистрация">Регистрация</a>
                    </div>
                </#if>
<#--                <div class="are-new">Новый пользователь? <a href="/registration/index.php" title="Регистрация">Регистрация</a></div>-->
            </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
