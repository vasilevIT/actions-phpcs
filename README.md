# actions-phpcs
PHPCS action for GitHub on PHP 7.4

## Setup
Add these lines to your YAML config file
```yaml
- name: PHP Code Style (phpcs)
  uses: chindit/actions-phpcs@master
```

**TIP**: You can replace `@master` by `@1.0.0` or any specific version of this
package you'd like to use.

### Rules
By default, `phpcs` will look for a `phpcs.xml.dist` file at the root of your project.

So, make sure this file exists and has all the rules you want to apply.

### Arguments
By default, `phpcs` is ran without any argument.

If you want, you can specify scan directory by adding 
```yaml
  with:
    dir: './src' 
```
