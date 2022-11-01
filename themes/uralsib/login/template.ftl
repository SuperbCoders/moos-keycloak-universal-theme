<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <meta http-equiv="content-language" content="ru">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <meta name="title" content="Уралсиб" />
    <meta name="description" content="Уралсиб" />
    <link rel="image_src" href="../images/social.jpg" />

    <meta property="og:locale" content="ru_RU" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Уралсиб" />
    <meta property="og:description" content="Уралсиб" />
    <meta property="og:image" content="../images/social.jpg" />
    <meta property="og:site_name" content="Уралсиб" />
    <link rel="icon" href="../favicon.png" type="image/x-icon">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Уралсиб">
    <meta name="twitter:description" content="Уралсиб">
    <meta name="twitter:image" content="../images/social.jpg">

    <meta itemprop="name" content="Уралсиб" />
    <meta itemprop="description" content="Уралсиб" />
    <meta itemprop="image" content="../images/social.jpg" />

    <#if properties.meta?has_content>
    <#list properties.meta?split(' ') as meta>
    <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
</#list>
</#if>
<title>Уралсиб</title>
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

<body class="login-page">
    <div class="wrapper">
    <#--  <#if displayMessage && message?has_content>
        <div class="notification notification-${message.type}">
            <#if message.type = 'success'><span class="notification__text"></span></#if>
            <#if message.type = 'warning'><span class="notification__text"></span></#if>
            <#if message.type = 'error'><span class="notification__text"></span></#if>
            <#if message.type = 'info'><span class="notification__text"></span></#if>
            <span class="notification__text">${message.summary?no_esc}</span>
        </div>
    </#if>  -->
        <div class="form-block">
            <#nested "form">
        </div>
    </div>
</body>
</html>
</#macro>
