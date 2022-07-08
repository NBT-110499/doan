package vn.t3h.t3h_2202.config;

import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import vn.t3h.t3h_2202.controller.backend.BackendProductController;
import vn.t3h.t3h_2202.paging.PagingAndSortParamResolver;

import java.util.List;
import java.util.Locale;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {
    @Bean(name = "localeResolver")
    public LocaleResolver getLocaleResolver() {
//        CookieLocaleResolver resolver = new CookieLocaleResolver();
//        resolver.setCookieDomain("myAppLocaleCookie");
//        resolver.setDefaultLocale(new Locale("vi"));
//        // 60 minutes
//        resolver.setCookieMaxAge(60 * 60);
//        return resolver;
        SessionLocaleResolver slr = new SessionLocaleResolver();
        slr.setDefaultLocale(new Locale("vi"));
        slr.setLocaleAttributeName("session.current.locale");
        slr.setTimeZoneAttributeName("session.current.timezone");
        return slr;
    }

    @Bean(name = "messageSource")
    public MessageSource getMessageResource()  {
        ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();

        messageResource.setBasename("classpath:i18n/messages");
        messageResource.setDefaultEncoding("UTF-8");
        return messageResource;
    }

    public void addInterceptors(InterceptorRegistry registry) {
        LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
        localeInterceptor.setParamName("lang");

        registry.addInterceptor(localeInterceptor).addPathPatterns("/*");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // định nghĩa 1 đường dẫn /image/tên ảnh
        registry.addResourceHandler("/image/**")
                .addResourceLocations("file:/" + BackendProductController.UPLOADED_FOLDER);
    }
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
        resolvers.add(new PagingAndSortParamResolver());
    }
}
