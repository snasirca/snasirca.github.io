# snasir.ca

Personal website of Shahriyar Nasir

## Development Setup

### Prerequisites

- Ruby 3 (managed via rbenv)

  ```bash
  eval "$(rbenv init -)"

  # Or set Ruby version globally:
  rbenv global 3.2.2

  # Verify installation
  ruby -v
  ```

### Initial Setup

2. Install dependencies

   bundle install

### Running Locally

Start the development server:

    bundle exec jekyll serve

The site will be available at http://localhost:4000

### Development Notes

- The site will automatically rebuild when you make changes to files
- If you add new gems to the Gemfile, run `bundle install` again

### GitHub Pages

This site is configured to be hosted on GitHub Pages. The `github-pages` gem ensures compatibility with GitHub Pages' Jekyll environment.
