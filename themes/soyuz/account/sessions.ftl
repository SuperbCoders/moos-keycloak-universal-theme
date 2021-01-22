<#import "template.ftl" as layout>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>
<div class="sessions">
    <div class="min-title">Сессии</div>
    <div class="for-table">
        <table>
            <tbody>
            <tr>
                <th>${msg("ip")}</th>
                <th>${msg("started")}</th>
                <th>${msg("lastAccess")}</th>
                <th>${msg("expires")}</th>
                <th>${msg("clients")}</th>
            </tr>
            <#list sessions.sessions as session>
                <tr>
                    <td>${session.ipAddress}</td>
                    <td>${session.started?datetime}</td>
                    <td>${session.lastAccess?datetime}</td>
                    <td>${session.expires?datetime}</td>
                    <td>
                        <#list session.clients as client>
                            ${client}
                        </#list>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

    <form action="${url.sessionsUrl}" method="post" class="order">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <button id="logout-all-sessions" class="btn btn-default" title="Выйти из сессии">Выйти из сессии</button>
    </form>
</div>
</@layout.mainLayout>
