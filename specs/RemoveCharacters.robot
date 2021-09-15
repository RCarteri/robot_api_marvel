*Settings*
Documentation    Suite de Teste de exclusão de personagens na API da Marvel

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Xmen.py

Suite Setup      Super Setup  ricardo@yahoo.com

*Test Cases*
Deve remover um personagem pelo id

    ${personagem}   Factory Ciclope
    ${ciclope}        POST New Character      ${personagem}
    ${ciclope_id}     Set Variable            ${ciclope.json()}[_id]
    ${response}     DELETE Character By id     ${ciclope_id}

    Status Should Be    204    ${response}

    ${response2}    GET Character By Id     ${ciclope_id}

    Status Should Be    404     ${response2}

Não deve remover o personagem pelo id
    ${personagem_id}    Get Unique Id
    ${response}         DELETE Character By id     ${personagem_id}

    Status Should Be    404     ${response}