<?xml version="1.0"?>
<recipe>
    <#if includeLayout>
      <instantiate from="root/src/app_package/fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}.xml" />
      <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentName}.xml" />
    </#if>
    <instantiate from="root/src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
 		<instantiate from="root/src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt" />
 		<instantiate from="root/src/app_package/Module.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}FragmentModule.kt"/>
    <instantiate from="root/src/app_package/Provider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}FragmentProvider.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt"/>
</recipe>