package br.com.caelum.apigateway;

import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@EnableZuulProxy
@SpringBootTest
class ApiGatewayApplicationTests {

	@Test
	void contextLoads() {
	}

}
