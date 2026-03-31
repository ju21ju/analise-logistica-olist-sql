# Análise Logística e Satisfação do Cliente - E-commerce Olist

Este projeto explora o conjunto de dados públicos da **Olist** (maior marketplace do Brasil) para entender como a performance logística influencia a experiência e a satisfação do consumidor final.

A análise foca no paradoxo entre os prazos de entrega estimados e a realidade operacional, com um olhar detalhado sobre os estados do **Acre (AC)** e **Alagoas (AL)**.

---

## Ferramentas Utilizadas
* **SQL (Google BigQuery):** Extração, limpeza e agregação dos dados.
* **Power BI:** Criação de dashboards e visualização de dados.
* **VS Code:** Organização e versionamento dos scripts.

---

## Insights Principais

### 1. O Paradoxo do Prazo Estimado
Identifiquei que estados como o **Acre** recebem pedidos, em média, **20 dias antes do prazo previsto**. Embora isso garanta o cumprimento do SLA, prazos excessivamente longos no checkout podem atuar como um fator desestimulante para a conversão de vendas.

### 2. Eficiência Operacional vs. Estratégia de Frete
Ao analisar o *Lead Time* de postagem (tempo que o vendedor leva para enviar), descobri que a operação é consistente em todo o país (aprox. 3 dias). Isso prova que a entrega antecipada em regiões distantes é fruto de uma **margem de segurança inflada** no cálculo do frete, e não de uma logística acelerada.

### 3. O Custo do Atraso na Satisfação (NPS)
A insatisfação do cliente aumenta drasticamente com o atraso. No Acre, a nota média de satisfação despenca de **4.18 para 1.67** quando o prazo é descumprido — uma queda de 60%. Isso demonstra que falhas na **Última Milha (Last Mile)** são fatais para a reputação da marca em regiões onde a espera já é naturalmente longa.

---

## Estrutura do Repositório
* `01_atraso_por_estado.sql`: Consulta para calcular a média de dias entre entrega real e estimada.
* `02_tempo_postagem.sql`: Análise do tempo médio de postagem por parte dos vendedores.
* `03_impacto_satisfacao.sql`: Cruzamento entre status de entrega e notas de avaliação (review score).

---

## Conclusão
O sucesso no e-commerce depende do equilíbrio entre uma promessa de entrega realista e uma execução impecável. Otimizar as estimativas de frete pode aumentar a conversão, enquanto o monitoramento da última milha é essencial para proteger a fidelidade do cliente.

---
**Analista Responsável:** Juliana Schmidt  
[LinkedIn](https://www.linkedin.com/in/juliana-schmidt-moreira-b9601b1a1/)
