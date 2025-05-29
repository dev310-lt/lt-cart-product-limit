#!/bin/bash

echo "🚀 Initializing LT Cart Product Limit App using Shopify Remix template..."

# Step 1: Install CLI if missing
if ! command -v shopify &> /dev/null
then
    echo "📦 Installing Shopify CLI..."
    npm install -g @shopify/cli @shopify/app
fi

# Step 2: Scaffold Remix App
shopify app init 
# remix --name="lt-cart-product-limit" --shop=lumosbots-test.myshopify.com

cd Lt-Cart-Product-Limit || exit

# Step 3: Install dependencies
echo "📦 Installing project dependencies..."
npm install || yarn install

# Step 4: Create additional folders
mkdir -p app/{components,lib,models,styles,routes/api} scripts

# Step 5: Init Git
echo "🔀 Setting up Git..."
git init
git config user.name "dev310-lt"
git config user.email "dev310@lumosbots.com"
git remote add origin https://github.com/dev310-lt/lt-cart-product-limit.git

# Step 6: Bootstrap environment
cp .env .env.example
echo "⚙️ Update .env with your Shopify API keys and MongoDB/Redis URLs"

# Step 7: Output success
echo "✅ Project setup complete! Use 'shopify app dev' to start developing."
