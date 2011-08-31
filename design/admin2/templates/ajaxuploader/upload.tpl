{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<form action={'ezjscore/call'|ezurl} method="post" class="ajaxuploader-upload">
    <fieldset>
        <legend>{'Step 1/3: Upload a file'|i18( 'design/admin2/ajaxuploader' )}</legend>
        <p>
            <label for="ajaxuploader-name">{'Name'|i18n( 'design/admin2/ajaxuploader' )}</label>
            <input type="name" name="UploadName" id="ajaxuploader-name" class="box" />
        </p>
        <p>
            <label for="ajaxuploader-file">{'File'|i18n( 'design/admin2/ajaxuploader' )} ({'Required'|i18n( 'design/admin2/ajaxuploader' )})</label>
            <input type="file" name="UploadFile" id="ajaxuploader-file" class="input-required" />
        </p>
        <p class="ajaxuploader-button-bar">
            <input type="submit" class="button" value="{'Upload the file'|i18n( 'design/admin2/ajaxuploader' )}" />
            <a href="#" class="window-cancel">{'Close'|i18n( 'design/admin2/ajaxuploader' )}</a>
            <span class="ajaxuploader-error"></span>
        </p>
    </fieldset>
</form>