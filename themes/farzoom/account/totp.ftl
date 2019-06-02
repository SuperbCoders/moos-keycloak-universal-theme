<#import "template.ftl" as layout>
<@layout.mainLayout active='totp' bodyClass='totp'; section>
<div class="auth-block">
    <#if totp.enabled>
<h2>${msg("authenticatorTitle")}</h2>

<table class="table table-bordered table-striped">
    <thead
        <tr>
            <th colspan="2">${msg("configureAuthenticators")}</th>
            </tr>
        </thead>
    <tbody>
        <tr>
            <td class="provider">${msg("mobile")}</td>
            <td class="action">
                <form action="${url.totpUrl}" method="post" class="form-inline">
                    <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
                    <input type="hidden" id="submitAction" name="submitAction" value="Delete">
                    <button id="remove-mobile" class="btn btn-default"><i class="pficon pficon-delete"></i></button>
                </form>
                </td>
            </tr>
        </tbody>
    </table>
    <#else>
        <div class="min-title">Аутентификатор</div>
        <div class="subtitle">
            <p>Установите одно из следующих приложений на свой мобильный <b>FreeOTP, Google Authenticator</b>.</p>
            <p>Откройте приложение и сканировать штрих-код</p>
        </div>
    <div class="green-block">
    <#if mode?? && mode = "manual">
        <li>
            <p>${msg("totpManualStep2")}</p>
            <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
            <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("totpScanBarcode")}</a></p>
        </li>
        <li>
            <p>${msg("totpManualStep3")}</p>
            <ul>
                <li id="kc-totp-type">${msg("totpType")}: ${msg("totp." + totp.policy.type)}</li>
                <li id="kc-totp-algorithm">${msg("totpAlgorithm")}: ${totp.policy.algorithm}</li>
                <li id="kc-totp-digits">${msg("totpDigits")}: ${totp.policy.digits}</li>
                <li id="kc-totp-period">${msg("totpInterval")}: ${totp.policy.period}</li>
            </ul>
        </li>
    <#else>
            <div class="img">
                <img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode">
            </div>
            <div class="gb-right">
                <div class="txt">
                    <p><b>Невозможно сканировать?</b></p>
                    <p>Введите одноразовый код, предоставленный приложением и нажмите.</p>
                    <p>Сохраните, чтобы завершить настройку.</p>
                </div>
                <form action="${url.totpUrl}" method="post">
                    <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">


                    <div class="form-block">
                        <div class="input-blocks">
                            <div><label for="totp">One-time code</label></div>
                            <input type="text" id="totp" name="totp" autocomplete="off" autofocus autocomplete="off">
                            <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
                        </div>


                        <div class="order">
                            <button type="submit" name="submitAction" value="Save">Сохранить</button>
                        </div>
                    </div>
                </form>
            </div>
    </#if>
    </div>
    </#if>
</div>
</@layout.mainLayout>
