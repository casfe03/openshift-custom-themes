<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        <#if messageHeader??>
        ${messageHeader}
        <#else>
            <#if message.summary == msg('confirmExecutionOfActions')>
                ${kcSanitize(msg('welcomeToOurApplication'))?no_esc}
            <#elseif message.summary == msg('accountUpdatedMessage')>
                ${kcSanitize(msg('accountSuccessfullySetup'))?no_esc}
                <div style="font-size: small;font-weight:normal;">
                    Para acessar o Portal de Serviços do DETRAN-DF clique no link abaixo:<br><br><br>
                    <a class="button" href="https://portal.detran.df.gov.br/login">Acessar</a>
                </div>
            <#elseif message.summary == msg('accountPasswordUpdatedMessage')>
                ${message.summary}
                <div style="font-size: small;font-weight:normal;">
                    Senha definida com sucesso!<br>
                    Para acessar o Portal de Serviços do DETRAN-DF clique no link abaixo:<br><br><br>
                    <a class="button" href="https://portal.detran.df.gov.br/login">Acessar</a>
                </div>
            <#else>
                ${message.summary}
            </#if>
        </#if>
    <#elseif section = "form">
    <div id="kc-info-message">
        <#if message.summary == msg('confirmExecutionOfActions')>
            ${kcSanitize(msg('startSettingUpAccount'))?no_esc}&nbsp;
            <p class="instruction">${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></p>
        <#else>
           <#if message.summary == msg('accountUpdatedMessage')>
           <#elseif message.summary == msg('accountPasswordUpdatedMessage')>
           <#else>
               <p class="instruction">${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></p>
           </#if>
        </#if>
        <#if skipLink??>
        <#else>
            <#if pageRedirectUri?has_content>
                <p><a href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            <#elseif actionUri?has_content>
                <p><a href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#elseif (client.baseUrl)?has_content>
                <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            </#if>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>
