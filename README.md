# E-Waste Awareness Campaign (Ruby on Rails)

A small Rails 7.1 site built from the Electronic Waste Awareness Campaign brochure. It has no database.

## Run it

```bash
bundle install
bin/rails server
```

Then open http://localhost:3000.

## Pages

| Path           | Content                                              |
| -------------- | ---------------------------------------------------- |
| `/`            | Hero, key numbers, quick actions, Instagram call-out |
| `/the-issue`   | What e-waste is, harms, where it happens, why it grows |
| `/solutions`   | Actions for individuals and businesses               |
| `/government`  | Government responsibilities and ongoing actions      |
| `/follow`      | Social links                                         |

## Instagram

The account is set in one place: `app/helpers/application_helper.rb` (`INSTAGRAM_URL` and `INSTAGRAM_HANDLE`).
It appears in the nav bar, footer, home page, solutions page and the follow page.

## Deploying

Set `SECRET_KEY_BASE` (generate one with `bin/rails secret`) and `RAILS_SERVE_STATIC_FILES=1`, then run
`RAILS_ENV=production bin/rails assets:precompile` before starting the server.
