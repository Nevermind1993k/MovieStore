package org.nevermind.bu.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"org.nevermind.bu.dao", "org.nevermind.bu.service"})
public class SpringConfig {
}
