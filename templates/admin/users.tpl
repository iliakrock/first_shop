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
                    <td>{if $user['is_admin'] == 1} admin {else} user {/if}</td>
                    <td>
                        {if $user['is_admin'] == 1}
                            <form action="/?action=adminChangeRole" method="POST">
                                <input type="hidden" value="$user['id']" name="id ">
                                <input type="hidden" value="0" name="admin ">
                                <input type="submit" class="btn btn-primary" value="Make user">
                            </form>
                        {else}
                            <form action="/?action=adminChangeRole" method="POST">
                                <input type="hidden" value="$user['id']" name="id ">
                                <input type="hidden" value="1" name="admin">
                                <input type="submit" class="btn btn-success" value="Make admin">
                            </form>
                        {/if}
                        {if $user['id'] == $smarty.session.user.id}
                            -
                        {else}
                            <form action="/?action=adminRemoveUsers" method="GET">
                                <input type="hidden" value="{$user['id']}" name="id">
                                <a href="/?action=adminRemoveUsers&userId={$user['id']}" class="btn btn-danger">Delete</form>
                        {/if}
                    </td>
            </tr>
        {/foreach}
        </tbody>
    </table>
{/block}