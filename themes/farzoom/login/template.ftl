<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
    <#list properties.meta?split(' ') as meta>
    <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
</#list>
</#if>
<title><#nested "title"></title>
<link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
<#if properties.styles?has_content>
<#list properties.styles?split(' ') as style>
<link href="${url.resourcesPath}/${style}" rel="stylesheet" />
</#list>
</#if>
<#if properties.scripts?has_content>
<#list properties.scripts?split(' ') as script>
<script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
</#list>
</#if>
<#if scripts??>
<#list scripts as script>
<script src="${script}" type="text/javascript"></script>
</#list>
</#if>
</head>

<body class="${properties.kcBodyClass!}">
    <#if displayMessage && message?has_content>
        <div class="notification notification-${message.type}">
            <#if message.type = 'success'><span class="notification__text"></span></#if>
            <#if message.type = 'warning'><span class="notification__text"></span></#if>
            <#if message.type = 'error'><span class="notification__text"></span></#if>
            <#if message.type = 'info'><span class="notification__text"></span></#if>
            <span class="notification__text">${message.summary?no_esc}</span>
        </div>
    </#if>
    <section class="fr-app fr-login">
        <section class="fr-login-sidebar">
            <a class="fr-login-sidebar__logo" href="${properties.kcLogoLink!'#'}"><img src="${url.resourcesPath}/img/logo.svg" alt="farzoom"/></a>

            <!-- Login form -->

            <div class="fr-login-form-container">
                <#nested "form">
            </div>

            <!-- END/ Login form -->
            <div class="fr-login-sidebar__bottom">
                <span>FarZoom 2018 © &nbsp; v. 1.2.9.1 ßeta 2 </span>
                <a href="mailto:support@farzoom.com">support@farzoom.com</a>
            </div>
        </section>
        <section class="fr-login-block">

        </section>
    </section>
</body>
</html>
</#macro>
