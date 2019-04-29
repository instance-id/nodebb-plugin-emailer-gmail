<h1><i class="fa fa-envelope-o"></i> Emailer (Gmail-Oauth2)</h1>

<div class="row">
	<div class="col-lg-12">
		<blockquote>
			<p>
				Gmail Oauth2 plugin.<br /><br />
			</p>
		</blockquote>
			<p>
				UNDER DEVELOPMENT!		
			</p>
	</div>
</div>

<hr />

<form role="form" class="emailer-settings">
	<fieldset>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<label for="clientId">Client_Id</label>
					<input type="text" class="form-control" id="clientId" name="clientId" />
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<label for="clientSecret">Client_Secret</label>
					<input type="text" class="form-control" id="clientSecret" name="clientSecret" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<label for="refreshToken">Refresh_Token</label>
					<input type="text" class="form-control" id="refreshToken" name="refreshToken" />
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<label for="fromAddress">Address From:</label>
					<input type="text" class="form-control" id="fromAddress" name="fromAddress" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<label for="authorizedURI">Authorized Redirect URI</label>
					<input type="text" class="form-control" id="authorizedURI" name="redirectUrl" />
				</div>
			</div>
		</div>
		<button class="btn btn-lg btn-primary" id="save" type="button">Save</button>
	</fieldset>
</form>

<script type="text/javascript">
	require(['settings'], function(Settings) {
		Settings.load('gmail-oauth2', $('.emailer-settings'));

		$('#save').on('click', function() {
			Settings.save('gmail-oauth2', $('.emailer-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'gmail-oauth2-saved',
					title: 'Settings Saved',
					message: 'Click here to reload NodeBB',
					timeout: 2500,
					clickfn: function() {
						socket.emit('admin.reload');
					}
				});
			});
		});
	});
</script>