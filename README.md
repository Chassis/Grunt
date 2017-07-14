# Grunt extension for Chassis
The Grunt extension automatically sets up your Chassis instance to be able to use grunt inside your Chassis box.

## Activation
Ensure you have a Chassis instance set up locally already and that you have the Nodejs extension installed. https://github.com/Chassis/nodejs

```
# In your Chassis dir:
git clone --recursive https://github.com/Chassis/Grunt.git extensions/grunt
```

Then you'll need to reprovision
```
cd ..
vagrant provision
```

Alternatively you can add the extension to one of your yaml config files. e.g.
```
# Extensions
#
# Install a list of extensions automatically
extensions:
    - chassis/grunt
```

Then you'll need to reprovision

```
cd ..
vagrant provision
```

Grunt has now been installed inside your Chassis box.
