<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <div style="font-size:50px;">
        ${msg("pageExpiredTitle")}
        </div>
        <br><br><br>
    <#elseif section = "form">
        <p id="instruction1" class="instruction">
            ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .<br/>
            ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
        </p>
    </#if>
</@layout.registrationLayout>
