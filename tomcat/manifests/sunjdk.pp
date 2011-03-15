class tomcat::sunjdk inherits tomcat {
    include sun-jdk
    Package[tomcat] { 
	require	+> Package['sun-java6-jdk']
    }
}
