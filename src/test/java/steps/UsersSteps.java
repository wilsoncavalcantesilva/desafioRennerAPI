package steps;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import utils.RestUtils;

import java.util.Map;

public class UsersSteps {
    Map<String, String> mapDados;
    String id = "";

    @Dado("que sejam preenchidos os valores de users com")
    public void queSejamPreenchidosOsValoresDeUsersCom(Map<String, String> map) {
        mapDados = map;
    }
    @Quando("que seja realizado o POST do Users")
    public void queSejaRealizadoOPOSTDoUsers() {
        RestUtils.postRequest("https://reqres.in/api/users", mapDados);
    }

    @Entao("o sistema devolve o status {int}")
    public void oSistemaDevolveOStatus(int status) {
        Assert.assertEquals(status, RestUtils.getStatusCode());
    }

    @Entao("valido que o campo {string} retornou o valor {string}")
    public void validoQueOCampoRetornouOValor(String key, String value) {
        Assert.assertEquals(value, RestUtils.getResponse(key));
    }

    @Entao("valido que o campo {string} retornou o valor {int}")
    public void validoQueOCampoRetornouOValor(String key, int value) {
        Assert.assertEquals(value, RestUtils.getResponse(key));
    }

    @Dado("que seja utilizado o id {string}")
    public void queSejaUtilizadoOId(String id) {
        this.id = id;
    }
    @Quando("que seja realizado o Get do Users")
    public void queSejaRealizadoOGetDoUsers() {
        RestUtils.getRequest("https://reqres.in/api/users/"+this.id);
    }

    @Quando("que seja realizado o PATCH do Users com o id {int}")
    public void queSejaRealizadoOPATCHDoUsersComOId(int id) {
        RestUtils.patchRequest("https://reqres.in/api/users/"+id, mapDados);
    }
}
