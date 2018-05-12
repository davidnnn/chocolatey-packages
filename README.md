# Chocolatey Packages

[![](https://ci.appveyor.com/api/projects/status/github/davidnnn/chocolatey-packages?svg=true)](https://ci.appveyor.com/project/davidnnn/chocolatey-packages)
[Update status](https://gist.github.com/davidnnn/YOUR_GIST_ID)

### Folder Structure

* automatic - where automatic packaging and packages are kept. These are packages that are automatically maintained using either [AU](https://chocolatey.org/packages/au) or [Ketarin](https://chocolatey.org/packages/ketarin)/[ChocolateyPackageUpdater](https://chocolatey.org/packages/chocolateypackageupdater) combo.
* icons - Where you keep icon files for the packages. This is done to reduce issues when packages themselves move around.
* ketarin - where ketarin jobs (aka applications or searches) exported as XML are kept. This is done to allow ease of contribution.
* manual - where packages that are not automatic are kept.
* ops - scripts, jobs, and other items for ensuring automatic packaging.
* setup - items for prepping the system to ensure for auto packaging.

For setting up your own automatic package repository, please see [Automatic Packaging](https://chocolatey.org/docs/automatic-packages)

### Requirements

* Chocolatey (choco.exe)

#### AU

* PowerShell v5+.
* The [AU module](https://chocolatey.org/packages/au).

For daily operations check out the AU packages [template README](https://github.com/majkinetor/au-packages-template/blob/master/README.md).

### Getting started
1. Head into the `setup` folder and perform the proper steps for your choice of setup (or both if you plan to use both methods).
1. Edit this README. Update the badges at the top.


### Recommendation on Auto Packaging

AU provides more in the process of being completely automated, sending emails when things go wrong, and providing a nice report at the end. It doesn't have a bolt-on feeling to it that you see with Ketarin / ChocolateyPackageUdater, however the one thing it does lack in comparison is no visual feedback to seeing how searches for installers may be found. Other than that, it provides errors when things go wrong, where Ketarin doesn't consider anything that happens during "before run"/"post run updates" (where chocopkgup and checksumming occur) to be an error, even if those scripts error.

So for best visibility, enjoying the ease of using AppVeyor, and for a nice report of results, we recommend AU over Ketarin. You also don't need to deal with templates as AU works directly with the xml/ps1 files to do replacement.

### Adapting your current source repository to this source repository template

You want to bring in all of your packages into the proper folders. We suggest using some sort of diffing tool to look at the differences between your current solution and this solution and then making adjustments to it. Pay special attention to the setup folder.

1. Bring over the following files to your package source repository:
 * `automatic\README.md`
 * `icons\README.md`
 * `ketarin\README.md`
 * `ketarin\_KetarinChocolateyTemplate.xml`
 * `manual\README.md`
 * `ops\*.*`
 * `setup\*.*`
 * `.appveyor.yml`
1. Inspect the following file and add the differences:
 * `.gitignore`

### Use Both Methodologies

The way this source repository is designed, you can use both AU and Ketarin/ChocolateyPackageUpdater together. This is especially helpful when migrating existing packages from one methodology to the other.
