<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <div style="font-size:50px;">
        ${msg("emailVerifyTitle")}
        </div>
        <div style="font-size: small;font-weight:normal;">
            Informe o(s) campo(s) abaixo(s) e acione o botão para iniciar o processo.
        </div>
        <br><br><br>
    <#elseif section = "form">
        <p class="instruction">
            ${msg("emailVerifyInstruction1")}
        </p>
        <p class="instruction">
            ${msg("emailVerifyInstruction2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
    </#if>
</@layout.registrationLayout>
