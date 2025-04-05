# WTICIFES 2025: Template de Artigo Científico 

Este repositório contém um template LaTeX para artigos científicos seguindo as diretrizes do Workshop de Tecnologia da Informação e Comunicação do Instituto Federal do Espírito Santo (WTICIFES) 2025.

## Descrição

O template foi adaptado do modelo canônico para artigo científico da ABNT (Associação Brasileira de Normas Técnicas), com refatoração assistida por IA Generativa. O modelo segue as normas acadêmicas brasileiras para publicações científicas.

## Estrutura do Projeto

- `main.tex`: Arquivo principal do template LaTeX
- `referencias.bib`: Arquivo BibTeX contendo as referências bibliográficas
- `background.png`: Imagem de fundo utilizada em todas as páginas do documento

## Características 
> As recomendações do Comitê de Comunicação Científica do WTICIFES 2025 estão disponíveis em https://wticifes.com.br/2025/submissao-trabalhos/

- Formatação de acordo com as normas ABNT
- Fonte tamanho 12pt, espaçamento entre linhas de 1,5cm
- Citações longas com recuo, espaçamento simples e fonte tamanho 10
- Seções alinhadas à esquerda e sem numeração
- Suporte para múltiplos autores com notas de rodapé para e-mails
- Imagem de fundo personalizada em todas as páginas

## Como Usar

1. Clone ou faça download deste repositório
2. Edite o arquivo `main.tex` com o conteúdo do seu artigo:
   - Altere o título em `\title{TÍTULO DO DOCUMENTO}`
   - Substitua os nomes dos autores e e-mails na seção de título
   - Preencha as seções com o conteúdo do seu artigo
3. Adicione suas referências bibliográficas ao arquivo `referencias.bib`
4. Compile o documento usando um compilador LaTeX (como pdfLaTeX) ou importa para o Overleaf.

## Exemplos de Uso

### Citações

```latex
% Citação no texto
Exemplo de citação \cite{chiavenato2000}.

% Citação como parte do texto
Segundo \citeonline{chiavenato2000}.

% Citação longa
\begin{quote}
Esta é uma citação longa que deve ser formatada em espaço simples de entrelinhas e fonte tamanho 10.
\end{quote}
```

## Contribuições 

- **Pull Requests**: Contribua com melhorias através de pull requests. Certifique-se de documentar as alterações propostas.

- **Compatibilidade**:O  template foi criado usando Overleaf e testado usando editor TexStudio - https://www.texstudio.org/.

## Créditos

- Walfran Araújo (UNIFESP) - Adaptação para WTICIFES 2025
- Alexsandro Cardoso Carvalho (UNIFESP) - Organização
- Lauro Cesar Araujo - Modelo Canônico ABNT2 para artigo científico

## Licença

Este template é disponibilizado para uso acadêmico e científico.
