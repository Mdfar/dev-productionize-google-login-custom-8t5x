import { useEffect } from 'react'; import { supabase } from '../supabaseClient';

/**

Ensures users are redirected to the custom domain

post-auth rather than the underlying Supabase/Lovable URL. */ export const useAuthRedirect = () => { useEffect(() => { const { data: authListener } = supabase.auth.onAuthStateChange( (event, session) => { if (event === 'SIGNED_IN') { console.log('Successfully signed in on custom domain.'); } } );

return () => { authListener.subscription.unsubscribe(); }; }, []); };