
# Collaborator Guidelines

We use GDLauncher or the CurseForge app as a development environment.

## Requirements

- [GDLauncher](https://gdevs.io/#downloadContainer) or the [CurseForge App](https://download.curseforge.com/#download-options)
- Software for Git ([Git](https://git-scm.com/downloads), [GitHub Desktop](https://desktop.github.com/), GitHub Desktop is extremely user friendly)
- Text Editor ([Sublime Text](https://www.sublimetext.com/), [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/), etc)
- Have created a [fork](https://github.com/ShadowRaptorMC/galacticdrive/fork) of the Galactic Drive repository.

## Downloading the latest development build

Download the latest development artifact from [actions](https://github.com/ShadowRaptorMC/galacticdrive/actions). Click on the latest run of the "Create Curseforge Modpack" workflow, and download the GalacticDrive-development artifact. Alternatively, you can use our [nightly.link](https://nightly.link/ShadowRaptorMC/galacticdrive/workflows/cursePackCreate/develop/GalacticDrive-development.zip).

## Instructions for setting up development environment with GDLauncher

**1)** Launch GDLauncher, and click "**+**" button at the bottom left. Then. click "Import Zip" at the top of the pop up box. Select the downloaded *GalacticDrive-development.zip* and allow GDLauncher to download the mods. GDLauncher has a process that will open a native browser window to download mods unavailable through third-party launchers. After installation, DO NOT LAUNCH THE PACK! Open the installed instance directory by right clicking the modpack, "Open Folder", and close GDLauncher.

**2)** Open your preferred Git client. and clone your fork of the Galactic Drive Repository, such that the local path will be \(path before GDLauncher)\GDLauncher\instances\galacticdrive.

**3)** WITHOUT OPENING GDLauncher, copy the **"mods"** directory, the **"natives"** directory, and the **"config.json"** file from the "Galactic Drive" directory (the instance you downloaded with GalacticDrive-development.zip), into the "galacticdrive" directory (where you cloned the repository to). You can then delete the "Galactic Drive" directory.

**4)** Open GDLauncher, and launch the galacticdrive instance. After fully launching the modpack, ensure that no files have appeared and remained in your changed files within Git.

## Instructions for setting up development environment with the CurseForge App

**1)** Launch the CurseForge App, and click "Create Custom Profile" button at the top right. Then. click "import" at the top of the pop up box. Select the downloaded GalacticDrive-development.zip and allow the CurseForge app to download the mods. After installation, DO NOT LAUNCH THE PACK! Open the installed instance directory by right clicking the modpack, "Open Folder", and close the CurseForge App.

**2)** Open your preferred Git client. and clone your fork of the Galactic Drive Repository, such that the local path will be \(path before Curse App)\CurseForge\Instances\galacticdrive.

**3)** WITHOUT OPENING THE CURSEFORGE APP, copy the **"mods"** directory, and the **".curseclient"** and **"minecraftinstance.json"** from the "Galactic Drive" directory (the instance you downloaded with GalacticDrive-development.zip), into the "galacticdrive" directory (where you cloned the repository to). You can then delete the "Galactic Drive" directory.

**4)** Open the CurseForge App, and launch the Galactic Drive instance. After fully launching the modpack, ensure that no files have appeared and remained in your changed files within Git.

<hr>

This concludes the setup of the development environment. Any changes you make to the modpack will be reflected in your preferred Git client.

If you ever encounter any files appearing changed when you did not directly change them, create an [issue](https://github.com/ShadowRaptorMC/galacticdrive/issues) so we can add the file to our .gitignore.

## Submitting a Pull Request

Be sure that you are working from the **develop** branch of the repository. This is where active development takes place. Your pull request from the **develop** branch of your fork must be merged into the **develop** branch of the main repository.

If you plan to make large changes to the modpack and would like to see them upstream, it would be best to consult Zediious on our [Discord](http://www.discord.shadowraptor.net/) so that we can see if the changes would make it into the modpack before you spend effort making the changes.
