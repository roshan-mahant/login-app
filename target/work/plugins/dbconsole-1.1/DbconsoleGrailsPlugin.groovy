class DbconsoleGrailsPlugin {
    // the plugin version
    def version = "1.1"
    // the version or versions of Grails the plugin is designed for
    def grailsVersion = "1.3.0 > *"
    // the other plugins this plugin depends on
    def dependsOn = [:]
    // resources that are excluded from plugin packaging
    def pluginExcludes = [
            "grails-app/views/error.gsp"
    ]

    def author = "Mike Hugo"
    def authorEmail = "mike@piragua.com"
    def title = "H2 DB Web Console"
    def description = '''\\
Provides a web based console for pre-1.4 grails apps
Based entirely on Burt Beckwith's blog post: http://burtbeckwith.com/blog/?p=446
WARNING:
This is an extremely insecure implementation. Clients are responsible for securing the /dbconsole url
'''
    // URL to the plugin's documentation
    def documentation = "http://grails.org/plugin/dbconsole"
}
