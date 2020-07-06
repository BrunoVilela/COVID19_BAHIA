|Arquivo|Variável|Descrição|Fonte|
|---|---|---|---|
|bahia.dbf|mapa bahia|shapefile com alta qualidade|IBGE|
|bahia.prj|mapa bahia|shapefile com alta qualidade|IBGE|
|bahia.shp|mapa bahia|shapefile com alta qualidade|IBGE|
|bahia.shx|mapa bahia|shapefile com alta qualidade|IBGE|
|binary.csv|Filtros espaciais|Cada coluna é um dia (carregada como filbin**, onde os asteriscos são os dias após o primeiro caso). O valor representa o número de municipios vizinhos com covid|covidbr*|
|cen.saude.csv|cen.saude|Centralidade da rede do fluxo de pessoas em busca de atendimento|IBGE*|
|cen.saude.csv|cen.saude.ba|Centralidade da rede do fluxo de pessoas em busca de atendimento. Exclui da matrix municipios de fora da bahia|IBGE*|
|cen.saude.csv|cen.saude.ba.adj|Centralidade da rede do fluxo de pessoas em busca de atendimento. Exclui da matrix municipios que não se conectam com a bahia|IBGE*|
|cen.saude.csv|mod.saude|Modulos da rede do fluxo de pessoas em busca de atendimento.|IBGE*|
|cen.saude.csv|mod.saude.ba|Modulos da rede do fluxo de pessoas em busca de atendimento. Exclui da matrix municipios de fora da bahia|IBGE*|
|cen.saude.csv|mod.saude.adj|Modulos da rede do fluxo de pessoas em busca de atendimento. Exclui da matrix municipios que não se conectam com a bahia|IBGE*|
|cen.saude.csv|degree.saude|Grau dos municípios da bahia na rede do fluxo |IBGE*|
|cen.saude.csv|degree.saude.ba|Grau dos municípios da bahia na rede do fluxo. Exclui da matrix municipios de fora da bahia|IBGE*|
|cen.saude.csv|polo.saude| Binário. Municípios que recebem pessoas em busca de atendimento|IBGE*|
|climatic.br.csv|precTotal|Precipitação média nos últimos 4 meses|Worldclim|
|climatic.br.csv|tmean|Temperatura média nos últimos 4 meses|Worldclim|
|decretos.csv|rod_fechada|Número de dias que o munícipio ficou com as linhas intermunicipais fechadas a partir de 28/03|AGERBA|
|decretos.csv|colunas com datas|Número de dias que o munícipio ficou com as linhas intermunicipais fechadas a partir de 28/03 até a data em questão|AGERBA|
|descritores.csv|descrição das variáveis|descrição das variáveis|AGERBA|
|federal_w_codes.csv|road.dist|comprimento das rodovias federais no municipio|mapbiomas*|
|federal_w_codes.csv|area.muni|area do municipio|mapbiomas*|
|federal_w_codes.csv|dens.road|densidade de rodovias (comprimento/area)|mapbiomas*|
|ibge.csv|cidade|nome do municipio|IBGE|
|ibge.csv|lon|longitude baseado no centroide geográfico|IBGE|
|ibge.csv|lat|latitude baseado no centroide geográfico|IBGE|
|ibge.csv|cod_ibge|código do municipio|IBGE|
|ibge.csv|dist.min|distância mínima de aeroportos|openflights|
|ibge.csv|dist.mean|distância média de aeroportos|openflights|
|ibge.csv|airport|presença de aeroportos|openflights|
|ibge.csv|total.pop|população total|IBGE|
|ibge.csv|perc.rural|porcentagem da população rural|IBGE|
|ibge.csv|month.wages|renda mensal média|IBGE|
|ibge.csv|perc.with.wages|porcentagem com renda|IBGE|
|ibge.csv|school.year|anos de escolaridade|IBGE*|
|ibge.csv|perc.above.50|porcentagem da população acima de 50 anos|IBGE|
|ibge.csv|pib2017|PIB do municipio|IBGE|
|ibge.csv|area|area do municipio|IBGE|
|ibge.csv|dens|densidade do municipio|IBGE|
|ibge.csv|water_percapita_2000|consumo de água percapita em 2000|IBGE|
|ibge.csv|dorm_3|Número de casas que tem 3 ou mais pessoas por dormitório |IBGE|
|ibge.csv|dorm_3_rel|Porcentagem das casas que tem 3 ou mais pessoas por dormitório |IBGE|
|main.air.ba.csv|dist.ilheus|distância mínima do aeroporto de ilheus|openflights|
|main.air.ba.csv|dist.ssa|distância mínima do aeroporto de salvador|openflights|
|main.air.ba.csv|dist.min.ilh.ssa|distância mínima do aeroporto de ilheus ou salvador|openflights|
|meso.csv|mesoregião|mesorregião à qual o municipio pertence|IBGE|
|new.airport.centrality.csv|icao|código do aeroporto|ANAC|
|new.airport.centrality.csv|uf|unidade da federação|ANAC|
|new.airport.centrality.csv|ibge|codigo do ibge|ANAC|
|new.airport.centrality.csv|long|longitude do aeroporto|ANAC*|
|new.airport.centrality.csv|lat|latitude do aeroporto|ANAC*|
|new.airport.centrality.csv|nat.centrality|centralidade da rede de voos nacionais ano 2019|ANAC|
|new.airport.centrality.csv|nat.module|modulos da rede de voos nacionais ano 2019|ANAC|
|new.airport.centrality.csv|int.centrality|centralidade da rede de voos nacionais e internacionais ano 2019|ANAC|
|new.airport.centrality.csv|int.module|modulos da rede de voos nacionais e internacionais ano 2019|ANAC|
|new.airport.centrality.csv|nat.degree|número de conexões com aeroportos nacionais|ANAC|
|new.airport.centrality.csv|int.degree|número de conexões com aeroportos nacionais e internacionais|ANAC|
|new.airport.centrality.csv|dif.degree|número de conexões com aeroportos internacionais|ANAC|
|new.airport.centrality.csv|nat.strength|número de voos para aeroportos nacionais|ANAC|
|new.airport.centrality.csv|int.strength|número de voos para aeroportos nacionais e internacionais|ANAC|
|new.airport.centrality.csv|dif.strength|número de voos para aeroportos internacionais|ANAC|
|new.airport.centrality.csv|nat.fligths|Binário. aeroporto possui voos nacionais|ANAC|
|new.airport.centrality.csv|int.fligths|Binário. aeroporto possui voos internacionais|ANAC|
|new.airport.centrality.csv|n.nat.fligths|número de voos para aeroportos nacionais|ANAC|
|new.airport.centrality.csv|n.int.fligths|número de voos para aeroportos internacionais|ANAC|
|new.dat.ba.csv|eingen.cen.dist|Centralidade na rede das linhas intermunicipais da Bahia|AGERBA*|
|new.dat.ba.csv|module|Módulos da rede das linhas intermunicipais da Bahia|AGERBA*|
|new.dat.ba.csv|roles|Categórica. Papeis topológicos na rede das linhas intermunicipais da Bahia|AGERBA*|
|new.dat.ba.csv|inter.state|Binária. municipio recebe linhas interestaduais?|ANTT*|
|new.dat.ba.csv|inter.eingen.cen.dist|Centralidade na rede das linhas interestaduais|ANTT*|
|new.dat.ba.csv|inter.module|módulos na rede das linhas interestaduais|ANTT*|
|new.dat.ba.csv|inter.roles|Papeis topológicos na rede das linhas interestaduais|ANTT*|
|new.data.sus.csv|mortes|total de mortes|datasus|
|new.data.sus.csv|mortes.diabetes|total de mortes por diabetes|datasus|
|new.data.sus.csv|mortes.hipertensao|total de mortes por hipertensão|datasus|
|new.data.sus.csv|estabelecimentos.saude|número de estabelecimentos de saude|datasus|
|new.data.sus.csv|leitos|número de leitos|datasus|
|new.data.sus.csv|profissionais.saude|número de profissionais de saúde, inclui profissionais administratisvo|datasus|
|new.data.sus.csv|aux.enf.intensivista|número de tec. enfermeiros intensivistas|datasus|
|new.data.sus.csv|sup.enf.intensivista|número de sup. enfermeiros intensivistas|datasus|
|new.data.sus.csv|sup.med.intensivista|número de médicos intensivistas|datasus|
|new.data.sus.csv|sup.med.infectologista|número de médicos infectologistas|datasus|
|new.data.sus.csv|p_diabetes|proporção de mortes por diabetes|datasus|
|new.data.sus.csv|p_hipertensao|proporção de mortes por diabetes|datasus|
|new.main.air.ba.csv|dist.ilheus|distância minima do aeroporto de ilheus|ANAC|
|new.main.air.ba.csv|dist.ssa|distância minima do aeroporto de salvador|ANAC|
|new.main.air.ba.csv|dist.min.ilh.ssa|distância minima do aeroporto de ilheus ou salvador|ANAC|
|new.main.air.ba.csv|dist.min.loc|distância minima de aeroporto local|ANAC|
|new.main.air.ba.csv|dist.min.nat|distância minima de aeroporto nacional|ANAC|
|new.main.air.ba.csv|dist.min.int|distância minima de aeroporto internacional|ANAC|
|new.main.air.ba.csv|dist.min.nat.wint|distância minima de aeroporto nacional excluindo os internacionais|ANAC|
|new.main.air.ba.csv|nat.airport|Binário. possui aeroporto nacional?|ANAC|
|new.main.air.ba.csv|loc.airport|Binário. possui aeroporto local?|ANAC|
|new_ibge.csv|cópia de ibge.csv|||
|quantitative.csv|Filtros espaciais|Cada coluna é um dia (carregada como filbin**, onde os asteriscos são os dias após o primeiro caso). O valor representa o número casos nos municipios vizinhos com covid|covidbr*|
|sim_bahia.dbf|mapa bahia|shapefile com baixa qualidade|IBGE*|
|sim_bahia.prj|mapa bahia|shapefile com baixa qualidade|IBGE*|
|sim_bahia.shp|mapa bahia|shapefile com baixa qualidade|IBGE*|
|sim_bahia.shx|mapa bahia|shapefile com baixa qualidade|IBGE*|
|sim_meso.dbf|mapa regiões bahia|shapefile com baixa qualidade|IBGE*|
|sim_meso.prj|mapa regiões bahia|shapefile com baixa qualidade|IBGE*|
|sim_meso.shp|mapa regiões bahia|shapefile com baixa qualidade|IBGE*|
|sim_meso.shx|mapa regiões bahiaa|shapefile com baixa qualidade|IBGE*|
|turismo.csv|Região Turística|Região turistica|Min. Turismo|
|turismo.csv|Domésticos|Estimativa do número de turistas nacionais|Min. Turismo|
|turismo.csv|Internacionais|Estimativa do número de turistas internacionais|Min. Turismo|
|turismo.csv|Estabelecimentos||Min. Turismo|
|turismo.csv|Empregos|Número de empregos turismo|Min. Turismo|
|turismo.csv|Arrecadação|Receita na arrecadação gerada pelo turismo|Min. Turismo|
|turismo.csv|Categoria|Categórica de A (mais alto) até E (mais baixo)|Min. Turismo|
|turismo.csv|rank_turismo|Ordinal de 5 (mais alto) até 1 (mais baixo)|Min. Turismo|
