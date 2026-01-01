Staqlt Lovable + Supabase Custom Domain Productionization
Implementation Summary

This project reconfigures the identity management layer to support a custom domain transition.

Key Steps

DNS Config: Point custom domain to Lovable hosting.

Supabase Update: Update SITE_URL and Redirect URLs to the new domain.

Google Cloud Config: Add the custom domain callback to the Authorized URIs list in GCP Console.

Validation: Test the full OAuth flow (Authorization -> Callback -> Session Injection).

Testing Checklist

[ ] Google Login Button redirects to Google Consent.

[ ] Successful Google Auth redirects back to the custom domain.

[ ] Session persists after page refresh.

[ ] Error handling for denied consent works.