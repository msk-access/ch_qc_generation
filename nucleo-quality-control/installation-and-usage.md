---
description: >-
  You must have run the Nucleo workflow first before running any of the
  MSK-ACCESS QC workflows.
---

# Installation and Usage

## Step 1: Create a virtual environment. <a href="#step-1-create-a-virtual-environment." id="step-1-create-a-virtual-environment."></a>

Option (A) - if using cwltool, please proceed using python 3.6 as done below: Here we can use either virtualenv or conda. Here we will use virtualenv.pip3 install virtualenvpython3 -m venv my\_projectsource my\_project/bin/activateOption (B) - recommended for Juno HPC clusterIf you are using toil, python 3 is required. Please install using Python 3.6 as done below:Here we can use eithervirtualenvorconda. Here we will use virtualenv.pip install virtualenvvirtualenv my\_projectsource my\_project/bin/activateOnce you execute the above command you will see your bash prompt something on this lines:(my\_project)\[server]$Step 2: Clone the repositorygit clone --recursive --branch 0.1.0 https://github.com/msk-access/access\_qc\_generation.gitNote: Change 0.1.0 to the latest stable release of the pipeline

## Step 3: Install requirements using pip <a href="#step-3-install-requirements-using-pip" id="step-3-install-requirements-using-pip"></a>

We have already specified the version of cwltool and other packages in the requirements.txt file. Please use this to install.#python3pip3 install -r requirements.txt

## Step 4: Generate an inputs file <a href="#step-4-generate-an-inputs-file" id="step-4-generate-an-inputs-file"></a>

Next you must generate a proper input file in either [json](https://www.json.org/) or [yaml](https://yaml.org/) format.For details on how to create this file, please follow this example (there is a minimal example of what needs to be filled in at the end of the page):​Inputs DescriptionIt's also possible to create and fill in a "template" inputs file using this command:$ cwltool --make-template nucleo.cwl > inputs.yamlNote: To see help for the inputs for cwl workflow you can use: `toil-cwl-runner nucleo.cwl --help`Once we have successfully installed the requirements we can now run the workflow using _cwltool/toil_ .

## Step 5: Run the workflow <a href="#step-5-run-the-workflow" id="step-5-run-the-workflow"></a>

Using toil-cwl-runner locally Using toil-cwl-runner on JUNOHere we show how to use [cwltool](https://github.com/common-workflow-language/cwltool) to run the workflow on a single machine, such as a laptop

#### Run the workflow with a given set of input using [cwltool](https://github.com/common-workflow-language/cwltool) on single machine <a href="#run-the-workflow-with-a-given-set-of-input-using-cwltool-on-single-machine" id="run-the-workflow-with-a-given-set-of-input-using-cwltool-on-single-machine"></a>

To generate the QC files for one sample:cwltool nucleo.cwl inputs.yamlYour workflow should now be running on the specified batch system. See [outputs](https://github.com/msk-access/access\_qc\_generation/tree/5087428d557571e8a6cfea17b46ad8c22fd96ca1/docs/outputs-description.md) for a description of the resulting files when is it completed.PreviousRequirementsNextInputs Description\