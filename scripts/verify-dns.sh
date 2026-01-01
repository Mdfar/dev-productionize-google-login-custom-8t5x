#!/bin/bash

Staqlt Domain Verification Script

DOMAIN="yourcustomdomain.com" EXPECTED_CNAME="lovable.app.proxy" # Example proxy target

echo "Checking CNAME record for DOMAIN..."ACTUAL
C
	​

NAME=(dig +short CNAME $DOMAIN)

if [ "$ACTUAL_CNAME" == "$EXPECTED_CNAME" ]; then echo "✅ DNS is correctly pointing to Lovable." else echo "❌ DNS mismatch. Found: $ACTUAL_CNAME" fi

echo "Checking Supabase Auth Endpoint Connectivity..." curl -I "https://[PROJECT_ID].supabase.co/auth/v1/settings" | grep "HTTP/2 200"