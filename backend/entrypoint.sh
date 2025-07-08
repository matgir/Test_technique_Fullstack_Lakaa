#!/bin/bash
set -e

# Wait for the database to be ready
echo "Waiting for database to be ready..."
until pg_isready -h db -p 5432 -U postgres; do
  echo "Database is unavailable - sleeping"
  sleep 1
done

echo "Database is ready!"

# Check if database exists, if not create it
if ! rails runner "ActiveRecord::Base.connection" 2>/dev/null; then
  echo "Creating database..."
  rails db:create
fi

# Check if FoodCollection model exists, if not generate scaffold
if ! rails runner "FoodCollection" 2>/dev/null; then
  echo "Generating FoodCollection scaffold..."
  rails generate scaffold FoodCollection collect_date:date association_name:string description:text
fi

# Run migrations
echo "Running migrations..."
rails db:migrate

# Execute the main command
exec "$@"
