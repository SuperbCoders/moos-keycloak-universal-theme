<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>
<div class="password">
    <div class="min-title">${msg("changePasswordHtmlTitle")}</div>
    <div class="form-block">
    <form action="${url.passwordUrl}" class="form-horizontal" method="post">
        <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">

        <div class="input-blocks">
        <#if password.passwordSet>
            <label for="password" class="control-label">${msg("password")}</label>
            <div class="ib ib-1">
                <input type="password" class="form-control" id="password" placeholder="Password" name="password" autofocus autocomplete="current-password">
            </div>
        </#if>

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <label for="password-new" class="control-label">${msg("passwordNew")}</label>
        <div class="ib ib-2">
            <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="new-password">
            <a href="#">
                <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">
            </a>
        </div>
            <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>
            <div class="ib ib-3">
                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="new-password">
                <a href="#">
                    <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">
                </a>
            </div>
        </div>
        <div class="order">
            <button type="submit" class="btn btn-block orange" name="submitAction" value="Save">${msg("doSave")}</button>
        </div>
    </form>
    </div>
</div>
</@layout.mainLayout>
