<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>
    <div class="user">
    <div class="min-title">${msg("editAccountHtmlTitle")}</div>

    <div class="form-block">
    <form action="${url.accountUrl}" method="post">
<#--        <div class="restore-pass__title">${msg("editAccountHtmlTitle")}</div>-->
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <div class="input-blocks">
        <#if !realm.registrationEmailAsUsername>
            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <div class="col-sm-2 col-md-2">
                    <label for="username" class="control-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                </div>
            </div>
        </#if>

        <div class="form-   group ${messagesPerField.printIfExists('email','has-error')}">
            <label for="email" class="control-label">${msg("email")}</label> <span class="required">*</span>
            <div class="ib ib-1">
                <input type="text" class="form-control" id="email" name="email" autofocus value="${(account.email!'')}"/>
            </div>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">
            <label for="firstName" class="control-label">${msg("firstName")}</label> <span class="required">*</span>
            <div class="ib ib-1">
                <input type="text" class="form-control" id="firstName" name="firstName" value="${(account.firstName!'')}"/>
<#--                <a href="#">-->
<#--                    <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">-->
<#--                </a>-->
            </div>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">

            <label for="lastName" class="control-label">${msg("lastName")}</label> <span class="required">*</span>
            <div class="ib ib-1">
                <input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')}"/>
<#--                <a href="#">-->
<#--                    <img src="${url.resourcesPath}/img/pass-aft-black.svg" alt="">-->
<#--                </a>-->
            </div>
        </div>
        </div>
        <div class="form-group">
<#--            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">-->
                <div class="order">
                    <#if url.referrerURI??><a href="${url.referrerURI}">${msg("backToApplication")?no_esc}/a></#if>
                    <button type="submit" class="btn btn-block orange" name="submitAction" value="Save">${msg("doSave")}</button>
                    <button type="submit" class="btn btn-block orange" name="submitAction" value="Cancel">${msg("doCancel")}</button>
<#--                    <button type="submit" class="btn btn-block btn-white">Зарегестрироваться</button>-->
                </div>
<#--            </div>-->
        </div>
    </form>
    </div>
</div>
</@layout.mainLayout>