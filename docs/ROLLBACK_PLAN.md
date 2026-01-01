Auth Transition Rollback Procedure

In case of critical login failures (e.g., Google 400: redirect_uri_mismatch):

Phase 1: Revert Supabase

Go to Authentication > Settings.

Change Site URL back to https://[PROJECT_ID].lovable.app.

Save changes.

Phase 2: Revert Google Cloud

Open APIs & Services > Credentials.

Select the OAuth 2.0 Client ID.

Re-add the previous .lovable.app URL to Authorized redirect URIs.

Phase 3: Verification

Open an incognito window.

Attempt login via the original Lovable URL.