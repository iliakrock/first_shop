{extends file="layout.tpl"}

{block name="body"}
    <table class="table" border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Created</th>
        </tr>
        </thead>
        <tbody>
        {foreach from=$users item=$user}
            <tr>
                <td>{$user['id']}</td>
                <td>{$user['email']}</td>
                <td>{$user['created_at']}</td>
            </tr>
            <tr>
                <button class="btn btn-success">Make admin</button>
                <button class="btn btn-danger">Delete</button>
            </tr>
        {/foreach}
        </tbody>
    </table>
{/block}