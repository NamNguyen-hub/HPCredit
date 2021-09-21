# EMPIRICAL RESULTS

```{=latex}

		In this following section, I will apply the unobserved components model to data from 2 countries: US and UK.
		
Choosing priors from an estimated VAR(2) regression on HP filtered cycle and trend series. The following likelihood function weights are selected in a manner that they make the decomposed series most stable. 
		
%		
%		\begin{landscape}
%			
%			%Regression table
%			% Please add the following required packages to your document preamble:
%			% \usepackage{booktabs}
%			% \usepackage{multirow}
%			\begin{table}[]
%				\caption {\label{tab:table1} United States regression results} 
%				\rowcolors{2}{gray!10}{white}
%				\begin{tabular}{@{}lSSSSSS@{}}
%					\toprule
%					\multirow{2}{*}{Parameters} & \multicolumn{2}{c}{VAR(2)} & \multicolumn{2}{c}{VAR(2) 1st-cross-lag} & \multicolumn{2}{c}{VAR(2) 2-cross-lags} \\
%					& \multicolumn{1}{l}{Estimate}     & \multicolumn{1}{l}{Std. Error}  & \multicolumn{1}{l}{Estimate}            & \multicolumn{1}{l}{Std. Error}         & \multicolumn{1}{c}{Estimate}            & \multicolumn{1}{c}{Std. Error}        \\ \midrule
%					$\phi^1_{y}$                & 1.521670374  & 0.323602024 & 1.890301193         & 0.036315042        & 1.886592178         & 0.00028419        \\
%					$\phi^2_{y}$                & -0.592177551 & 0.282758652 & -0.773199508        & 0.021652307        & -0.8941981          & 0.003233388       \\
%					$\phi^{x1}_{y}$             &              &             & -0.012689515        & 0.001245419        & 0.04280046          & 0.000520376       \\
%					$\phi^{x2}_{y}$             &              &             &                     &                    & -0.040322766        & 0.000876719       \\
%					$\phi^1_{h}$                & 1.803961772  & 0.039406338 & 1.465513594         & 0.064627659        & 1.864726867         & 0.038659834       \\
%					$\phi^2_{h}$                & -0.820986013 & 0.039263457 & -0.736886204        & 0.047825955        & -0.898033258        & 0.039051475       \\
%					$\phi^{x1}_{h}$             &              &             & 2.576890191         & 1.642027848        & 0.089729346         & 0.11453162        \\
%					$\phi^{x2}_{h}$             &              &             &                     &                    & -0.031982418        & 0.113620129       \\
%					$\sigma_{ny}$               & 0.968115538  & 0.064573932 & 0.975833563         & 0.066722551        & 0.858997834         & 0.055437867       \\
%					$\sigma_{ey}$               & 0.136584746  & 0.073940054 & 0.000413197         & 0.008728546        & 0.030583756         & 0.016664357       \\
%					$\sigma_{nh}$               & 0.964325946  & 0.107167236 & 1.271977495         & 0.127987617        & 1.135553581         & 0.106041662       \\
%					$\sigma_{eh}$               & 0.471089742  & 0.079046967 & 0.296047479         & 0.161613716        & 0.363776038         & 0.077466523       \\
%					$\sigma_{eyeh}$             & -0.999391959 & 0.03023235  & -0.881232755        & 0.311836698        & -1                  & 5.19E-07          \\
%					$\sigma_{nynh}$             & 0.464225409  & 0.094391207 &                     &                    &                     &                   \\
%					Log-likelihood value        & -369.9163016 &             & -384.7973521        &                    & -363.3991125        &                   \\ \bottomrule
%				\end{tabular}
%			\end{table}
%			
%		\end{landscape}
%		
%		\pagebreak
		
		
		\begin{landscape}
			
			%Regression table
			\begin{table}[]
				\begin{threeparttable}
				\caption {\label{tab:table1} United Kingdom regression results}
				%\rowcolors{2}{gray!10}{white} 
				\begin{tabular}{@{}lSSSSSS@{}}
					\toprule
					\multirow{1}{*}{Parameters} & \multicolumn{2}{c}{VAR(2)} & \multicolumn{2}{c}{VAR(2) 1-cross-lag} & \multicolumn{2}{c}{VAR(2) 2-cross-lags} \\
					& \multicolumn{1}{l}{Estimate}     & \multicolumn{1}{l}{Std. Error}  & \multicolumn{1}{l}{Estimate}            & \multicolumn{1}{l}{Std. Error}         & \multicolumn{1}{c}{Estimate}            & \multicolumn{1}{l}{Std. Error}        \\ \midrule
$\phi^1_{y}$ & 1.9724669930757 & 0.0234468079641688 & 1.88197173053092 & 0.000523125515915717 & 1.88953015161501 & 0.000183792455813221 \\[2pt] 

$\phi^2_{y}$ & -0.982683577200677 & 0.0263416186406314 & -0.815982512675866 & 0.00223671725855314 & -0.874307021294592 & 0.00255445094151967 \\[2pt] 

$\phi^{x1}_{y}$ &  &  & -0.023989100791422 & 0.000359092103478258 & 0.175607246015124 & 0.000809713546032516 \\[2pt] 

$\phi^{x2}_{y}$ &  &  &  &  & -0.196405159419335 & 0.00345072911067609 \\[2pt] 

$\phi^1_{h}$ & 1.50478963225312 & 0.101880883082685 & 1.57483174602634 & 0.00564601795054225 & 1.57420604076636 & 0.0642716927922472 \\[2pt] 

$\phi^2_{h}$ & -0.560771136941685 & 0.125238824672495 & -0.709427180268352 & 0.00767038778223485 & -0.736359754267049 & 0.0585703755604665 \\[2pt] 

$\phi^{x1}_{h}$ &  &  & 0.378335367631202 & 0.0170754712315724 & 0.721371469046458 & 0.0492006408181797 \\[2pt] 

$\phi^{x2}_{h}$ &  &  &  &  & -0.595881261414649 & 0.0442251354127095 \\[2pt] 

$\sigma_{ny}$ & 0.706260098775181 & 0.0599943989318998 & 0.701703618546321 & 0.0352951761051411 & 0.603955648517265 & 0.0374077642345331 \\[2pt] 

$\sigma_{ey}$ & 0.000426758587731293 & 0.0103570158509057 & 0.11272451354988 & 0.00521152792358025 & 0.0160160963024367 & 0.0062789472885429 \\[2pt] 

$\sigma_{nh}$ & 1.86757774805953 & 0.161705655819894 & 1.64285780217825 & 0.102292598525495 & 1.90382148717739 & 0.111540211251835 \\[2pt] 

$\sigma_{eh}$ & 0.656751391241774 & 0.258262683575022 & 0.63234948433104 & 0.0192668720356221 & 0.12891726400829 & 0.0268555883325836 \\[2pt] 

$\sigma_{eyeh}$ & 0.688777773046045 & 13.1231225529083 & 0.999999986940504 & 7.05800130005596e-06 & 0.999771604778545 & 0.00609274849523753 \\[2pt] 

$\sigma_{nynh}$ & 0.568004544830427 & 0.112515260783059 &  &  &  &  \\[2pt] 

Log-likelihood value & -454.645000317534 &  & -464.079327351476 &  & -456.56846781196 &  \\[2pt] 


										
					\bottomrule
				\end{tabular}
			\begin{tablenotes}
				\small
				\item Weights of likelihood function: w1 = 0.6, w2 = 0.4, w3 = 0.004, w4 = 0.003\\
				$l(\theta) = -w1\sum_{t=1}^{T}ln\lbrack(2\pi)^2|f_{t|t-1}|\rbrack
				-w2\sum_{t=1}^{T}\eta'_{t|t-1}f^{-1}_{t|t-1}\eta_{t|t-1}
				- w3*\sum_{t=1}^{T}(c_{yt}^2) + w4*\sum_{t=1}^{T}(c_{ht}^2)$
			\end{tablenotes}
			\end{threeparttable}
			\end{table}
			
		\end{landscape}
		
		\clearpage
		
		\pagebreak
		
		\begin{landscape}
			
			%Regression table
			\begin{table}[]
				\begin{threeparttable}
					\caption {\label{tab:table1} United States regression results}
					%\rowcolors{2}{gray!10}{white} 
					\begin{tabular}{@{}lSSSSSS@{}}
						\toprule
						\multirow{1}{*}{Parameters} & \multicolumn{2}{c}{VAR(2)} & \multicolumn{2}{c}{VAR(2) 1-cross-lag} & \multicolumn{2}{c}{VAR(2) 2-cross-lags} \\
						& \multicolumn{1}{l}{Estimate}     & \multicolumn{1}{l}{Std. Error}  & \multicolumn{1}{l}{Estimate}            & \multicolumn{1}{l}{Std. Error}         & \multicolumn{1}{c}{Estimate}            & \multicolumn{1}{l}{Std. Error}        \\ \midrule
						$\phi^1_{y}$ & 1.84966219148423 & 0.0644676313866302 & 1.3049851733765 & 0.104750302567286 & 1.55023948671664 & 0.0621673748460661 \\[2pt] 

						$\phi^2_{y}$ & -0.891729894865282 & 0.0639404413297913 & -0.509866573496016 & 0.069617976248189 & -0.575429145279164 & 0.0642314985800815 \\[2pt] 

						$\phi^{x1}_{y}$ &  &  & 0.0332424600607159 & 0.00266153911071895 & 0.0141314056256322 & 0.00830698240108732 \\[2pt] 

						$\phi^{x2}_{y}$ &  &  &  &  & 0.00368355628246947 & 0.0113623125942596 \\[2pt] 

						$\phi^1_{h}$ & 1.78470130468539 & 0.0344716924207026 & 2.05291126214826 & 0.0420850279485188 & 1.83380271755234 & 0.0658209041054138 \\[2pt] 

						$\phi^2_{h}$ & -0.803434089401448 & 0.0344748867950664 & -1.24693155894687 & 0.0730767847110221 & -0.935812307687759 & 0.0611374033703922 \\[2pt] 

						$\phi^{x1}_{h}$ &  &  & 1.07952833357358 & 0.291843931365872 & 1.7429079493859 & 0.44060251456779 \\[2pt] 

						$\phi^{x2}_{h}$ &  &  &  &  & -1.65444981264612 & 0.417548360352977 \\[2pt] 

						$\sigma_{ny}$ & 0.479256554775164 & 0.024356073491864 & 0.471764807847753 & 0.0240668275640588 & 0.419468168735488 & 0.0205969049394897 \\[2pt] 

						$\sigma_{ey}$ & 0.0281304866214994 & 0.015423818330929 & 0.0256204974500183 & 0.0136254798281635 & 0.0375254711433971 & 0.0132294877888843 \\[2pt] 

						$\sigma_{nh}$ & 0.454891152005456 & 0.0439608378398243 & 0.474208630734516 & 0.0382694791792356 & 0.493724545052865 & 0.0367094830752408 \\[2pt] 

						$\sigma_{eh}$ & 0.256618222235034 & 0.0323339473241677 & 0.0876133859992021 & 0.075599690650887 & 0.0965865013366302 & 0.0477727959889094 \\[2pt] 

						$\sigma_{eyeh}$ & -0.999999981277929 & 0.00012954480904903 & 0.999999998244551 & 8.59389213308525e-05 & 0.999999999996535 & 2.57431114995605e-06 \\[2pt] 

						$\sigma_{nynh}$ & 0.397394222344986 & 0.0720586265329286 &  &  &  &  \\[2pt] 

						Log-likelihood value & -339.725810225008 &  & -346.91597902411 &  & -332.070599830711 &  \\[2pt] 

												
						\bottomrule
					\end{tabular}
					\begin{tablenotes}
						\small
						\item Weights of likelihood function: w1 = 0.8, w2 = 0.2, w3 = 0.003, w4 = 0.004 \\
						$l(\theta) = -w1\sum_{t=1}^{T}ln\lbrack(2\pi)^2|f_{t|t-1}|\rbrack
						-w2\sum_{t=1}^{T}\eta'_{t|t-1}f^{-1}_{t|t-1}\eta_{t|t-1}
						- w3*\sum_{t=1}^{T}(c_{yt}^2) + w4*\sum_{t=1}^{T}(c_{ht}^2)$
					\end{tablenotes}
				\end{threeparttable}
			\end{table}
			
		\end{landscape}
		
		\clearpage
		
%		Given the regression results from the above table. To avoid the problem of perfect collinearity as shown in US data regression, and also to have a more significant estimate of the cross cycle correlation component; I select the second model - VAR(2) with 1 cross lag in the cycle component as the one to focus on.
			
		The tables 4 and 5 shows maximum-likelihood estimates of all three Unobserved Component VAR(2) models. The first model is a parsimony UC VAR(2) model with no cross-cycle correlation terms ($\phi^x_y$ and $\phi^x_h$ are set to be zero). The next two models introduces one and two cross-cycle correlation lags terms respectively. 
		
		The model selection criteria is to choose models with highest log-likelihood value. The parsimony UC VAR(2) models with no cross-cycle terms and the one with 2 cross-cycle terms model have the highest likehood values. Therefore, discussion regarding estimation results will focus mostly on these two. Additionally, because of identification problem, I will omit the cross correlation of trend component $\sigma_{nynh}$ in the estimation results for cross-cycle correlation models.
		
		\subsection{Dynamic relationship between Credit to household and Housing Price}
		
		The results of VAR(2) model regression suggests that permanent shocks dominate transitory shocks in term of variation in both household credit and housing price variables. The standard deviation of the shocks in cycle of credit is 0.0004 in the UK and 0.0281 in the US, much smaller than standard deviation of the shocks to trend of credit in the UK of 0.7063 and in the US of 0.4793. The same applies for housing price, the standard deviation of the shocks in cycle of housing price is 0.6568 in the UK and 0.2566 in the US, smaller than standard deviation of the shocks to trend of housing price in the UK of 1.8676 and in the US of 0.4549. This result also indicates that variations in the trend components of the UK is bigger than the US, while variations in the cycle components of the UK is smaller than the US. In regard of the estimated parameters, the sum of AR parameters of the cyclical components in all 3 models are smaller although close to one. This implies that shocks to the cycle are persistent but will eventually dissipate.
		
		The correlation analysis of the shocks to the cyclical components among the two variables suggests that cyclical variation among housing price and credit household is strongly positively correlated. Although we ran into the problem of identification or perfect collinearity with a cross-series correlation of 1 in a few estimated models. The overall results suggest that transitory shock to housing credit is closely positively correlated to transitory shock in housing price. The estimated correlation result in VAR(2) 2-cross cycle lags model is 0.9998 for the UK at 95\% significant level. This implies that a transitory increase in household credit will lead to an appreciation in housing price above its long-run trend.
		
		The correlation analysis of the shocks to the trends among the two variables reveals that there is also a long-term underlying correlation between shocks to the trend components of household credit and housing price. However, this correlation is much smaller compared to the correlation of the transitory components. The long-term components correlation estimated value is 0.568 in the UK and 0.3974 in the US. Overall, the results from the above analyses suggest that the short-run and long-run dynamics of the two variables are very different. Therefore, there is a benefit in decomposing the series into trend and cyclical components.
		
		
		\subsection{Trend-cycle decomposition}
		
		
%		Regarding results for the UK, the model selection criteria (likelihood function value) indicates that a simple VAR(2) fit the data the best. However, with the introduction of cross-cycle terms, at a slight cost of lower likelihood value I can better estimate the correlation value of short run credit and house price index ($\sigma_{eyeh}$) at a more significant value. Additionally, the cross-cycle results shows a better 
%		
%		Regression results for the US are less obvious. This could be attributed by the low correlation between the two series as shown in Table 2 and potentially a identification problem. All of the correlation value of short run credit and house price index ($\sigma_{eyeh}$) in all three models show a multicollinearity problem. The model selection criteria shows that VAR(2) with 2-cross-lag coefficients have the highest likelihood value. 
%		

%		\\
		
		The following graphs shows the UC forecast series against the actual data series.
		
```

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2/Output/Graphs/HP_Credit_4graphs_GB} 

}

\caption{VAR(2) UK}(\#fig:unnamed-chunk-1)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2_crosscycle_1stlagonly/Output/Graphs/HP_Credit_4graphs_GB} 

}

\caption{VAR(2) Cross-cycle 1st lag only UK}(\#fig:unnamed-chunk-2)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2_crosscycle/Output/Graphs/HP_Credit_4graphs_GB} 

}

\caption{VAR(2) Cross-cycle 2 lags UK}(\#fig:unnamed-chunk-3)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2/Output/Graphs/HP_Credit_4graphs_US} 

}

\caption{VAR(2) US}(\#fig:unnamed-chunk-4)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2_crosscycle_1stlagonly/Output/Graphs/HP_Credit_4graphs_US} 

}

\caption{VAR(2) Cross-cycle 1st lag only US}(\#fig:unnamed-chunk-5)
\end{figure}

\begin{figure}

{\centering \includegraphics[width=0.85\linewidth]{../../Regression/VAR_2_crosscycle/Output/Graphs/HP_Credit_4graphs_US} 

}

\caption{VAR(2) Cross-cycle 2 lags}(\#fig:unnamed-chunk-6)
\end{figure}

```{=latex}
		\pagebreak
		In this subsection, we decompose trend and cycle of household credit and housing price using the correlated unobserved component model. The stochastic trend in the multivariate UC model captures the long-run evolution in household credit, housing price, and the effect of the recent global financial crisis. In the long run, there is an increasing trend in the housing price index. The household credit trend is also increasing but since the series is credit to household as a ratio to GDP, the rate at which household credit trend increases is smaller than that of the housing price index. There is a downward movement of the trend components in both credit and housing price after the financial crisis. However, the housing price index trends made a quicker recovery than household credit did. 
		
		The cyclical components of the model capture the evolution of household credit, housing price, and their dynamic relationship. In figure 1-6, we can see that there is an increase in credit transitory component before the financial crisis of 2008-2009 happened, and there is a negative shock to the transitory component of housing price after the recession is captured in the model as well.
		
		It is also important to point out that our models capture a significant bigger gap in transitory shock in both credit and house price than a Hodrick-Prescott (HP) filter would. This implies that when dealing with a time series of low frequency and long-term assets such as housing price, it is worthwhile to consider using the unobserved component model rather than simply applying an HP filter since it reveals more lower frequency information. The graphs indicate that the magnitude of transitory shocks the models capture is higher and the frequency of the movement of the cycles is lower than that of other methods (HP filter). The graphs also imply that the models detect a bigger credit gap in the UK (Figure 3), and also bigger gaps in household credit and house price in the US (Figure 4-6).		
		
		
		\subsection{Predictive ability of cyclical components}
		A novel contribution of this paper is to introduce the cross-cycle parameter $\phi^{xt}_h$ and $\phi^{xt}_{y}$ in which it measures the effect of a change in last periods credit transitory component on the current housing price transitory component and vice versa. From Table 4 and 5, in both cross-cycle regressions in the UK and US, we can observe that there is a significant positive effect of last period credit cycle deviation on current housing cycle component ($\phi^{x1}_{h}$). While the coefficients of transitory housing index deviation on household credit ($\phi^{x1}_{y}$) are much smaller. This holds true for 2-crosscycle lags model also. This confirms that transitory shocks to household credit will cause a positive deviation in transitory housing price. However, transitory shocks to housing price have significantly smaller impact on household credit.
		

```