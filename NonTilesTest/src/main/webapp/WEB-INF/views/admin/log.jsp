<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NonTiles</title>
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
</head>
<body>
	<header>
		<h1>NonTitles</h1>
		<%@include file="/WEB-INF/views/inc/main_menu.jsp"%>
		<%@include file="/WEB-INF/views/inc/admin_menu.jsp"%>
	</header>

	<h1>
		관리자 <small> 로그 </small>
	</h1>

	<pre style="padding: 1rem; white-space: pre-wrap;">
	5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 서버 버전 이름:    Apache Tomcat/9.0.87
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 빌드 시각:  Mar 11 2024 10:12:34 UTC
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 버전 번호:  9.0.87.0
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 이름:     Windows 11
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 버전:     10.0
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 아키텍처:          amd64
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 자바 홈:           C:\class\dev\jdk11
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 버전:          11.0.21+9-LTS-193
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 벤더:          Oracle Corporation
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:     C:\class\code\spring\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:     C:\class\dev\apache-tomcat-9.0.87
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.base=C:\class\code\spring\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.home=C:\class\dev\apache-tomcat-9.0.87
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dwtp.deploy=C:\class\code\spring\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.lang=ALL-UNNAMED
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.io=ALL-UNNAMED
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util=ALL-UNNAMED
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util.concurrent=ALL-UNNAMED
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
5월 21, 2024 11:52:24 오전 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dfile.encoding=UTF-8
5월 21, 2024 11:52:24 오전 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR 버전 [1.7.4]을(를) 사용한, APR 기반 Apache Tomcat Native 라이브러리 [1.3.0]을(를) 로드했습니다.
5월 21, 2024 11:52:24 오전 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR 용량정보들: IPv6 [true], sendfile [true], accept filters [false], random [true], UDS [true].
5월 21, 2024 11:52:24 오전 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR/OpenSSL 설정: useAprConnector [false], useOpenSSL [true]
5월 21, 2024 11:52:24 오전 org.apache.catalina.core.AprLifecycleListener initializeSSL
INFO: OpenSSL이 성공적으로 초기화되었습니다: [OpenSSL 3.0.13 30 Jan 2024]
5월 21, 2024 11:52:25 오전 org.apache.coyote.AbstractProtocol init
INFO: 프로토콜 핸들러 ["http-nio-8080"]을(를) 초기화합니다.
5월 21, 2024 11:52:25 오전 org.apache.catalina.startup.Catalina load
INFO: [270] 밀리초 내에 서버가 초기화되었습니다.
5월 21, 2024 11:52:25 오전 org.apache.catalina.core.StandardService startInternal
INFO: 서비스 [Catalina]을(를) 시작합니다.
5월 21, 2024 11:52:25 오전 org.apache.catalina.core.StandardEngine startInternal
INFO: 서버 엔진을 시작합니다: [Apache Tomcat/9.0.87]
5월 21, 2024 11:52:25 오전 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
5월 21, 2024 11:52:25 오전 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
5월 21, 2024 11:52:25 오전 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Tue May 21 11:52:25 GMT+09:00 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 382 ms
5월 21, 2024 11:52:26 오전 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:26 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/],methods=[GET]}" onto public java.lang.String com.test.tiles.HomeController.home(java.util.Locale,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter - Looking for @ControllerAdvice: WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:26 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter - Looking for @ControllerAdvice: WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:26 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 611 ms
5월 21, 2024 11:52:27 오전 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
5월 21, 2024 11:52:27 오전 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
5월 21, 2024 11:52:27 오전 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Tue May 21 11:52:27 GMT+09:00 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 126 ms
5월 21, 2024 11:52:27 오전 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:27 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/admin/log.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.AdminController.log()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/admin/setting.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.AdminController.setting()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/index.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.MainController.index()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/member/info.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.MemberController.info()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/member/favorite.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.MemberController.favorite()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/member/history.do],methods=[GET]}" onto public java.lang.String com.test.nontiles.controller.MemberController.history()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/],methods=[GET]}" onto public java.lang.String com.test.nontiles.HomeController.home(java.util.Locale,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter - Looking for @ControllerAdvice: WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:27 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter - Looking for @ControllerAdvice: WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue May 21 11:52:27 GMT+09:00 2024]; parent: Root WebApplicationContext
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 468 ms
5월 21, 2024 11:52:27 오전 org.apache.coyote.AbstractProtocol start
	
	</pre>

</body>
</html>








