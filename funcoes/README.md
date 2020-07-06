
### back.clean.R
#### É a função que varre o vetor em buscas das incongruências. É usada pela covid.clean.R.
### covid.clean.R
#### Corrige as incongruências no data.frame do covidbr. Ex.: Um municipio possuí 7 casos de covid em 05/07 e no dia seguinte (06/07) tem 6 casos. A função corrige o dia 05/07 para ter apenas 6 casos. 
### covid.backup.R
#### Ao ser usada checa se o backup da noss pasta está atualizado e, se não estiver, atualiza o backup na pasta.
### missingday.R
#### Serve pra incluir o dia faltante 08/06/20 e salva no arquivo ba.cov2.csv. Não precisa ser rodada novamente.
