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
                    <img 
                      class="logo__img" 
                      src="${url.resourcesPath}/img/logo.svg" 
                      alt=""
                    >
                </div>

                <div class="form-group login-page__form-group">
                    <div class="input-blocks">
                      <div class="input-block input-block--floating">
                        <input 
                          class="input-blocks__input floating__input" 
                          name="username" 
                          type="text" 
                          required
                        />
                        <label 
                          class="floating__label" 
                          data-content="Имя пользователя"
                        >
                        </label>
                      </div>
                      <div class="input-block input-block--floating">
                        <input 
                          class="input-blocks__input floating__input" 
                          name="password" 
                          type="password"
                          required
                        />
                        <label 
                          class="floating__label" 
                          data-content="Пароль"
                        >
                        </label>
                      </div>
                    </div>
                </div>

                <#if message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                  <div class="">
                    <#if message.type = 'success'><span class=""></span></#if>
                    <#if message.type = 'warning'><span class=""></span></#if>
                    <#if message.type = 'error'><span class=""></span></#if>
                    <#if message.type = 'info'><span class=""></span></#if>
                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                  </div>
                </#if>

                <div class="form-group__buttons">
                    <button 
                      class="order__button" 
                      type="submit" 
                      id="kc-login"
                    >
                      Войти
                    </button>
                    <p class="form-group__buttons-span">или</p>
                    <button 
                      class="order__button order__button--secondary" 
                      type="submit" 
                      name="login" 
                    >
                      Войти с помощью
                    </button>
                </div>
                <div class="forget">
                    <#--  <#if realm.resetPasswordAllowed>  -->
                        <a class="forget__link" href="${url.loginResetCredentialsUrl}">Забыли пароль?</a>
                    <#--  </#if>  -->
                </div>
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
