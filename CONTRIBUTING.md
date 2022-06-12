
# Collaborator Guidelines

We use the CurseForge app as a development environment. As soon as third party launchers can download modpacks without failing to download some mods, this will be the case.

## Requirements

- CurseForge App
- Software for Git ([Git](https://git-scm.com/downloads), [GitHub Desktop](https://desktop.github.com/), GitHub Desktop is extremely user friendly)
- Text Editor ([Sublime Text](https://www.sublimetext.com/), [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/), etc)

## Instructions for setting up development environment

**1)** Download the latest development artifact from [here](https://github.com/ShadowRaptorMC/galacticdrive/actions), click the latest "Create Curseforge Modpack" workflow run, and download the GalacticDrive-development artifact.

**2)** Launch the CurseForge App, and click "Create Custom Profile" button at the top right. Then. click "import" at the top of the pop up box. Select the downloaded GalacticDrive-development.zip and allow the CurseForge app to download the mods. DO NOT LAUNCH THE PACK! Open the installed instance directory by right clicking the modpack, "Open Folder", and close the CurseForge App.

**3)** Open your preferred Git client. and clone the Galactic Drive Repository, such that the local path will be \path\CurseForge\Instances\galacticdrive. You can clone the repository with the following link [https://github.com/ShadowRaptorMC/galacticdrive.git](https://github.com/ShadowRaptorMC/galacticdrive.git)

**4)** WITHOUT LAUNCHING THE CURSEFORGE APP, copy the **"mods"** directory, and the **".curseclient"** and **"minecraftinstance.json"** from the "Galactic Drive" directory (the instance you downloaded with GalacticDrive-development.zip), into the "galacticdrive" directory (where you cloned the repository to). You can then delete the "Galactic Drive" directory.

**5)** This concludes the setup of the development environment. At this point, you can launch the CurseForge App, and further the Galactic Drive instance. Any changes you make to the modpack will be reflected in your preferred Git client.

If you ever encounter any files appearing changed when you did not directly change them, create an [issue](https://github.com/ShadowRaptorMC/galacticdrive/issues) so we can add the file to our .gitignore.
