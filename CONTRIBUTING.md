
# Collaborator Guidelines

We use the CurseForge app as a development environment. As soon as third party launchers can download modpacks without failing to download some mods, we will be using PolyMC.

## Requirements

- CurseForge App
- Software for Git ([Git](https://git-scm.com/downloads), [GitHub Desktop](https://desktop.github.com/), GitHub Desktop is extremely user friendly)
- Text Editor ([Sublime Text](https://www.sublimetext.com/), [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/), etc)
- Have created a [fork](https://github.com/ShadowRaptorMC/galacticdrive/fork) of the Galactic Drive repository.

## Instructions for setting up development environment

**1)** Download the latest development artifact from [here](https://github.com/ShadowRaptorMC/galacticdrive/actions), click the latest "Create Curseforge Modpack" workflow run, and download the GalacticDrive-development artifact.

**2)** Launch the CurseForge App, and click "Create Custom Profile" button at the top right. Then. click "import" at the top of the pop up box. Select the downloaded GalacticDrive-development.zip and allow the CurseForge app to download the mods. DO NOT LAUNCH THE PACK! Open the installed instance directory by right clicking the modpack, "Open Folder", and close the CurseForge App.

**3)** Open your preferred Git client. and clone your fork of the Galactic Drive Repository, such that the local path will be \(path before curse)\CurseForge\Instances\galacticdrive.

**4)** WITHOUT LAUNCHING THE CURSEFORGE APP, copy the **"mods"** directory, and the **".curseclient"** and **"minecraftinstance.json"** from the "Galactic Drive" directory (the instance you downloaded with GalacticDrive-development.zip), into the "galacticdrive" directory (where you cloned the repository to). You can then delete the "Galactic Drive" directory.

**5)** Open the CurseForge App, and launch the Galactic Drive instance. After fully launching the modpack, discard all the changes that appear on your local repository. These biomesoplenty and lycanitesmobs configuration files appear to be arbitrarily touched by their respective mods when first loaded, despite not making any changes.

**6)** This concludes the setup of the development environment. Any changes you make to the modpack will be reflected in your preferred Git client.

<hr>

If you ever encounter any files appearing changed when you did not directly change them (except for the initial Biomes o' Plenty and Lycanite's Mobs configurations), create an [issue](https://github.com/ShadowRaptorMC/galacticdrive/issues) so we can add the file to our .gitignore.
