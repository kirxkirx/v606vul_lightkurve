# v606vul_lightkurve
[LightKurve](https://github.com/lightkurve/lightkurve) analysis of TESS observations of classical nova V606 Vul

This repository contains Jupyter notebooks, lightcurve data files and plots 
created to address the referee's comments on the paper 
"TESS photometry of the nova eruption in V606 Vul: asymmetric photosphere and multiple ejections?" 
([arXiv e-print](https://arxiv.org/abs/2311.04903)) submitted to ApJ. 

* Analysis using a 3x3 square aperture, as described in the paper: [v606_vul_lk_square_aperture.ipynb](v606_vul_lk_square_aperture.ipynb)

* An alternative analysis using a circular source aperture and a source-centered ring aperture for background estimation (not
  used in the paper and presented here as an additional cross-check): [v606_vul_lk_circular_aperture.ipynb](v606_vul_lk_circular_aperture.ipynb)

* An illustration of how easy it is to overcorrect (and compeltely distort) a lightcurve: [v606_Vul__lk_RegressionCorrector__DO_NOT_DO_IT.ipynb](v606_Vul__lk_RegressionCorrector__DO_NOT_DO_IT.ipynb)


