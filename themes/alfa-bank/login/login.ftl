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
                    <img src="${url.resourcesPath}/img/alfa-bank-logo.svg" alt="">
                </div>

                <div class="form-group ">
                    <div class="input-blocks">
                        <div class="form-group__row-input">
                            <label for="username">Имя пользователя</label>
                            <div class="ib ib-1">
                                <input id="username" name="username" type="text" class="form-control form-control--login" aria-describedby="login" placeholder="Admin" autocomplete="off" aria-autocomplete="none">
                            </div>
                        </div>
                        <div class="form-group__row-input">
                            <label for="password">Пароль</label>
                            <div class="ib ib-2">
                                <input id="password" name="password" type="password" class="form-control form-control--password" aria-describedby="password" placeholder="${msg('password')}" autocomplete="off" aria-autocomplete="none">
                                <a href="#">
                                    <img src="${url.resourcesPath}/img/pass-aft-white.svg" alt="">
                                </a>
                            </div>
                            <script type="text/javascript">
                                const classname = document.querySelector('.ib-2 img');
                                classname.addEventListener("click", function() {
                                    const $password = document.getElementById("password");
                                    if ($password.type === 'password') {
                                        $password.type = 'text';
                                    } else {
                                        $password.type = 'password';
                                    }
                                }, false);
                            </script>
                        </div>
                    </div>
                </div>
                <div class="order">
                    <button class="" type="submit" name="login" id="kc-login">Вход</button>
                </div>
                <div class="forget">
                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}">Забыли пароль?</a>
                    </#if>
                </div>

                <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                    <div class="are-new">
                        <a tabindex="6" href="${url.registrationUrl}" title="Вход c сертификатом ЭП">Вход c сертификатом ЭП</a>
                    </div>
                </#if>
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
