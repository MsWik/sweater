<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout/>
</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение">
        <input type="text" name="tag" placeholder="Введите tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>

    </form>


</div>


<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}}">

    <button type="submit">Найти</button>


</form>

<#list messages as message>
<div>
    <B>${message.id}</B>
    <SPAN>${message.text}</SPAN>
    <i>${message.tag}</i>
    <<strong>${(message.author.username)!"&lt;none&gt;"}</strong>

</div>
<#else>
No messages
</#list>

</@c.page>