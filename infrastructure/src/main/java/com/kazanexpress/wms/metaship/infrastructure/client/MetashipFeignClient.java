package com.kazanexpress.wms.metaship.infrastructure.client;

import com.kazanexpress.wms.metaship.infrastructure.client.configuration.MetashipFeignClientConfiguration;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(name = "metaship", url = "${metaship.url}", configuration = MetashipFeignClientConfiguration.class)
public interface MetashipFeignClient {

}
