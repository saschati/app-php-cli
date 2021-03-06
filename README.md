# Run php-cli with composer install

This action run pph-cli with install composer and any library.

## Inputs

### `command`

**Required** Write command how do uses in action.

## Example usage
```
uses: saschati/app-php-cli
with:
  command: 'composer validate'
```