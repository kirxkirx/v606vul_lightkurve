# V606 Vul with LightKurve
This repository demonstrates how to use [LightKurve](https://github.com/lightkurve/lightkurve) to extract and analyze TESS observations of the classical nova V606 Vul.
It was created in response to referee comments on the paper "TESS photometry of the nova eruption in V606 Vul: asymmetric photosphere and multiple ejections?" 
([arXiv e-print](https://arxiv.org/abs/2311.04903)) submitted to ApJ. The repository contains Jupyter notebooks, lightcurve data files, and plots supporting the paper's main conclusion: 
the lightcurve of V606 Vul displays a 0.1277-day periodic modulation that is likely of astrophysical origin, as it is neither associated with background fluctuations nor present in nearby sources.

The repository includes five Jupyter notebooks:
* Analysis using a 3x3 square aperture, as described in the paper: [v606_vul_lk_square_aperture.ipynb](v606_vul_lk_square_aperture.ipynb)
* An alternative analysis using a circular source aperture and a source-centered ring aperture for background estimation (presented as an additional cross-check, not used in the paper): [v606_vul_lk_circular_aperture.ipynb](v606_vul_lk_circular_aperture.ipynb)
* A demonstration of how lightcurve overcorrection can lead to distortion: [v606_Vul__lk_RegressionCorrector__DO_NOT_DO_IT.ipynb](v606_Vul__lk_RegressionCorrector__DO_NOT_DO_IT.ipynb)
* **(NEW)** Single-pixel lightcurves confirming that the 0.128-day period is present only in the pixels covered by the nova image and not in the surrounding pixels: [v606_vul_lk_individual_pixel_lightcurves.ipynb](v606_vul_lk_individual_pixel_lightcurves.ipynb)
* **(NEW)** Lightcurve simulations illustraing the need for detrending before a period search: [why_detrend_before_period_search.ipynb](why_detrend_before_period_search.ipynb)

The periodicity analysis in [the paper](https://arxiv.org/abs/2311.04903) uses manual selection of lightcurve regions where periodic variability is clearly visible, followed by piecewise linear detrending, as shown by the green lines in the plot below.

![TESS lightcurve of V606 Vul](https://github.com/user-attachments/assets/943df569-cddc-4692-aa0c-bedb940d2b81)  
*Figure 1 from [the paper](https://arxiv.org/abs/2311.04903). The TESS lightcurve of V606 Vul measured using four different photometry codes. The bright-green lines represent the piecewise linear function used for lightcurve detrending before the period search. Measurements not overlapping with any of the lines were excluded from the periodicity analysis.*

![fig6](https://github.com/user-attachments/assets/a3cad3c4-5506-4f12-b298-ced0a18f8a40)

In these Jupyter notebooks, we employ a simplified detrending procedure using [LightKurve](https://github.com/lightkurve/lightkurve)'s `.flatten` function, which implements the Savitzky-Golay filter. This automated approach requires no manual data selection and demonstrates that the ~0.1277-day periodogram peak is robust, independent of the time interval selection and detrending algorithm choice.

![agya_marina](https://github.com/user-attachments/assets/b61cb2de-bf69-49f4-8fae-a0ef325bafe8)  
*An [artist's impression of](https://en.wikipedia.org/wiki/Margaret_the_Virgin#Iconography) selecting smoothing parameters for a Savitzky-Golay filter.*
