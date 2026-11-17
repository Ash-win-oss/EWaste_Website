FROM ruby:3.3.6-slim

RUN apt-get update -qq && apt-get install -y --no-install-recommends build-essential git libyaml-dev pkg-config && rm -rf /var/lib/apt/lists/*

WORKDIR /rails
ENV RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=1 \
    BUNDLE_WITHOUT=development

COPY Gemfile Gemfile.lock* ./
RUN bundle install

COPY . .
RUN SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile

EXPOSE 10000
ENV PORT=10000
CMD ["sh", "-c", "bundle exec puma -C config/puma.rb -b tcp://0.0.0.0:${PORT}"]
