# Run php-cli with composer install

This action run pph-cli with install composer and any library.

## Inputs

### `command`

**Required** Write command how do uses in action.

### `dir`

The directory where your composer.json is located. Default `./`

## Example usage
```
uses: saschati/app-php-cli
with:
  command: 'composer validate'
```