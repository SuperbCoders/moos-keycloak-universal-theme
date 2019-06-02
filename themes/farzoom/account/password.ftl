<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>
<div class="password">
    <div class="min-title">${msg("changePasswordHtmlTitle")}</div>
<#--    <div class="min-title">${msg("allFieldsRequired")}</div>-->
<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("changePasswordHtmlTitle")}</h2>-->
<#--        </div>-->
<#--        <div class="col-md-2 subtitle">-->
<#--            <span class="subtitle">${msg("allFieldsRequired")}</span>-->
<#--        </div>-->
<#--    </div>-->
    <div class="form-block">
    <form action="${url.passwordUrl}" class="form-horizontal" method="post">
        <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">

        <div class="input-blocks">
        <#if password.passwordSet>
            <label for="password" class="control-label">${msg("password")}</label>
            <div class="ib ib-1">
<#--                <input type="text" name="login" placeholder="Admin">-->
                <input type="password" class="form-control" id="password" placeholder="Password" name="password" autofocus autocomplete="current-password">
            </div>
<#--            <div class="form-group">-->
<#--                <div class="col-sm-2 col-md-2">-->
<#--                    <label for="password" class="control-label">${msg("password")}</label>-->
<#--                </div>-->

<#--                <div class="col-sm-10 col-md-10">-->
<#--                    <input type="password" class="form-control" id="password" name="password" autofocus autocomplete="current-password">-->
<#--                </div>-->
<#--            </div>-->
        </#if>

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

<#--        <div class="form-group">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="password-new" class="control-label">${msg("passwordNew")}</label>-->
<#--            </div>-->

<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="new-password">-->
<#--            </div>-->
<#--        </div>-->

<#--        <label for="password">Пароль</label>-->
        <label for="password-new" class="control-label">${msg("passwordNew")}</label>
        <div class="ib ib-2">
            <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="new-password">
            <a href="#">
                <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">
            </a>
        </div>

<#--        <div class="form-group">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>-->
<#--            </div>-->

<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="new-password">-->
<#--            </div>-->
<#--        </div>-->

<#--            <label for="password_repeat">Повторить пароль</label>-->
            <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>
            <div class="ib ib-3">
<#--                <input type="password" name="password_repeat" placeholder="023dfjJJnfn)2-fek2">-->
                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="new-password">
                <a href="#">
                    <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">
                </a>
            </div>
        </div>
        <div class="order">
<#--            <button type="button" class="orange">Сохранить</button>-->
            <button type="submit" class="btn btn-block orange" name="submitAction" value="Save">${msg("doSave")}</button>
        </div>
<#--        <div class="form-group">-->
<#--            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">-->
<#--                <div class="">-->
<#--                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
    </form>
    </div>
</div>
</@layout.mainLayout>
