# Acessar canal no YouTube

<p align="center"> Este projeto acessa o YouTube, realiza a pesquisa do canal desejado e se direciona a aba "Sobre" para realizar um print da tela.  </p>

<p align="center"> 
    <a href="#sobre">Sobre</a> -
    <a href="#Cenarios">Cenarios</a> -
    <a href="#Instruções">Instruções</a> -
    <a href="#autora">Autora</a> -
</p>

# Sobre

<p>Para que o usuário possa verificar o número de inscritos de um canal no YouTube este projeto: </p>
    </p>   - Dado que eu acesso o YouTube </p>
    </p>   - Quando eu acesso o canal </p>
    </p>   - Então eu acesso a aba Sobre do canal </p>
    </p>   - E verifico a quantidade de inscritos </p>

# Cenarios

</p> Além do caso de sucesso também são testados dois fluxos alternativos: </p>
    </p> 1- Acessa o canal errado e é redirecionado para a página inicial </p>
        </p> - Dado que eu acesso o YouTube </p>
        </p> - Quando eu procuro o canal errado </p>
        </p> - Então eu devo ser redirecionada para a página principal</p>
        </p>  </p>
    </p> 2 - Acessa a aba errada e é redirecionado para a aba correta </p>
        </p> - Dado que eu acesso o YouTube </p>
        </p> - Quando eu acesso o canal </p> 
        </p> - Então eu acesso a aba errada do canal </p> 
        </p> - E devo ser redirecionada para a aba certa </p> 

# Instruções
 </p> VSCode é o editor sugerido para este projeto. </p>

```bash
# Clone este repositório </p>

    git clone https://github.com/PaolaaFernandes/AcessoYT.git

#Acesse a pasta do projeto no cmd

    cd AcessoYT-master

# Instale as dependências

     bundle install  
    
# Execute o projeto no cmd

     cucumber
```

# Autora

</p>Paola Fernandes</p>
