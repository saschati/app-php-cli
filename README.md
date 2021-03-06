# Run php-cli with composer

This action run php-cli with install composer and any library.

## Inputs

### `command` - **Required** Write command how do uses in action.
### `dir` - The directory where your projects. Default `''`

## Example usage
```
uses: saschati/app-php-cli@v1.0.1
with:
  command: 'composer validate'
  dir: src
```