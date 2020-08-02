<#macro mainLayout active bodyClass>
<!doctype html>
<html>
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

    <meta name="title" content="Абсолют Банк" />
    <meta name="description" content="Абсолют Банк" />
    <link rel="image_src" href="../images/social.jpg" />

    <meta property="og:locale" content="ru_RU" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Абсолют Банк" />
    <meta property="og:description" content="Абсолют Банк" />
    <meta property="og:image" content="../images/social.jpg" />
    <meta property="og:site_name" content="Абсолют Банк" />
    <link rel="icon" href="../favicon.png" type="image/x-icon">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Абсолют Банк">
    <meta name="twitter:description" content="Абсолют Банк">
    <meta name="twitter:image" content="../images/social.jpg">

    <meta itemprop="name" content="Абсолют Банк" />
    <meta itemprop="description" content="Абсолют Банк" />
    <meta itemprop="image" content="../images/social.jpg" />

    <title>Абсолют Банк</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
</head>
<body class="admin-console user ${bodyClass}">
    <div class="container">

        <div class="left-menu">
            <div class="logo">
                <img src="${url.resourcesPath}/img/alfa-bank-logo.svg" alt="">
            </div>
            <p class="grey">Меню</p>
            <div class="menu-block">
                <div><a class="<#if active=='account'>active</#if>" href="${url.accountUrl}">Учетная запись</a></div>
                <#if features.passwordUpdateSupported><div><a class="<#if active=='password'>active</#if>" href="${url.passwordUrl}">Пароль</a></div></#if>
                <div><a class="<#if active=='totp'>active</#if>" href="${url.totpUrl}">Аутентификатор</a></div>
                <#if features.identityFederation><div><a class="<#if active=='social'>active</#if>" href="${url.socialUrl}">${msg("federatedIdentity")}</a></div></#if>
                <div><a class="<#if active=='sessions'>active</#if>" href="${url.sessionsUrl}">Сессии</a></div>
                <div><a class="<#if active=='applications'>active</#if>" href="${url.applicationsUrl}">Приложения</a></div>
                <#if features.log><div><a class="<#if active=='log'>active</#if>" href="${url.logUrl}">${msg("log")}</a></div></#if>
                <#if referrer?has_content && referrer.url?has_content><div><a href="${referrer.url}" id="referrer">Вернуться</a></div></#if>
                <div><a href="${url.logoutUrl}">${msg("doSignOut")}</a></div>
            </div>
        </div>
        <div class="wrapper">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    <#if message.type=='success'>
                        <span class="pficon pficon-ok"></span>
                        <#if referrer?has_content && referrer.url?has_content>
                        <script>
                          window.location.href = "${referrer.url}";
                        </script>
                        </#if>
                    </#if>
                    <#if message.type=='error' ><span class="pficon pficon-error-octagon"></span><span class="pficon pficon-error-exclamation"></span></#if>
                    ${message.summary?no_esc}
                </div>
            </#if>

            <#nested "content">
        </div>
    </div>

</body>
</html>
</#macro>