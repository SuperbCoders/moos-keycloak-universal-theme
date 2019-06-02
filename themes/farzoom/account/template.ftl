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
        
<#--    <header class="navbar navbar-default navbar-pf navbar-main header">-->
<#--        <nav class="navbar" role="navigation">-->
<#--            <div class="navbar-header">-->
<#--                <div class="container">-->
<#--                    <h1 class="navbar-title">Keycloak</h1>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="navbar-collapse navbar-collapse-1">-->
<#--                <div class="container">-->
<#--                    <ul class="nav navbar-nav navbar-utility">-->
<#--                        <#if realm.internationalizationEnabled>-->
<#--                            <li>-->
<#--                                <div class="kc-dropdown" id="kc-locale-dropdown">-->
<#--                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>-->
<#--                                    <ul>-->
<#--                                        <#list locale.supported as l>-->
<#--                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>-->
<#--                                        </#list>-->
<#--                                    </ul>-->
<#--                                </div>-->
<#--                            <li>-->
<#--                        </#if>-->
<#--                        <#if referrer?has_content && referrer.url?has_content><li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li></#if>-->
<#--                        <li><a href="${url.logoutUrl}">${msg("doSignOut")}</a></li>-->
<#--                    </ul>-->
<#--                </div>-->
<#--            </div>-->
<#--        </nav>-->
<#--    </header>-->

    <div class="container">

        <div class="left-menu">
            <div class="logo">
                <img src="${url.resourcesPath}/img/form-orange-logo.svg" alt="">
            </div>
            <p class="grey">Меню</p>
            <div class="menu-block">
<#--                <div class="<#if active=='account'>active</#if>"><a href="">Учетная запись</a></div>-->
<#--                <div><a href="">Пароль</a></div>-->
<#--                <div><a href="">Аутентификатор</a></div>-->
<#--                <div><a href="#" class="active">Сессии</a></div>-->
<#--                <div><a href="#">Приложения</a></div>-->

                <div><a class="<#if active=='account'>active</#if>" href="${url.accountUrl}">Учетная запись</a></div>
                <#if features.passwordUpdateSupported><div><a class="<#if active=='password'>active</#if>" href="${url.passwordUrl}">Пароль</a></div></#if>
                <div><a class="<#if active=='totp'>active</#if>" href="${url.totpUrl}">Аутентификатор</a></div>
                <#if features.identityFederation><div><a class="<#if active=='social'>active</#if>" href="${url.socialUrl}">${msg("federatedIdentity")}</a></div></#if>
                <div><a class="<#if active=='sessions'>active</#if>" href="${url.sessionsUrl}">Сессии</a></div>
                <div><a class="<#if active=='applications'>active</#if>" href="${url.applicationsUrl}">Приложения</a></div>
                <#if features.log><div><a class="<#if active=='log'>active</#if>" href="${url.logUrl}">${msg("log")}</a></div></#if>

                <#if referrer?has_content && referrer.url?has_content><div><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></div></#if>
                <div><a href="${url.logoutUrl}">${msg("doSignOut")}</a></div>
            </div>
        </div>

<#--        <div class="bs-sidebar col-sm-3">-->
<#--            <ul>-->
<#--                <li class="<#if active=='account'>active</#if>"><a href="${url.accountUrl}">${msg("account")}</a></li>-->
<#--                <#if features.passwordUpdateSupported><li class="<#if active=='password'>active</#if>"><a href="${url.passwordUrl}">${msg("password")}</a></li></#if>-->
<#--                <li class="<#if active=='totp'>active</#if>"><a href="${url.totpUrl}">${msg("authenticator")}</a></li>-->
<#--                <#if features.identityFederation><li class="<#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li></#if>-->
<#--                <li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>-->
<#--                <li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li>-->
<#--                <#if features.log><li class="<#if active=='log'>active</#if>"><a href="${url.logUrl}">${msg("log")}</a></li></#if>-->
<#--            </ul>-->
<#--        </div>-->

        <div class="wrapper">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
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