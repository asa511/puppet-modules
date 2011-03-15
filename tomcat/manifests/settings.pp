define tomcat::settings($tomcat_xms, $tomcat_xmx) {
   file { "${tomcat::params::initconfigfile}" :
        owner  => root,
        group  => root,
        mode   => 622,
        content => template("tomcat-default.erb"),
        notify => Service['tomcat'],
   }
}
