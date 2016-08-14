package com.tekdays

import grails.test.mixin.TestFor
import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(TekUser)
class TekUserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test ProjectSla domain where required fields are all filled in"() {

        given:
        mockForConstraintsTests TekUser


        when: 'all required fields are filled in so validation should succeed'
        def tekUser = new TekUser([fullName:'Ben Kafka'])


        tekUser.save()

        then:
        tekUser.validate()
        if (tekUser.hasErrors()) {
            tekUser.errors.each { println it }
        }
        !tekUser.hasErrors()
        tekUser.errors.errorCount == 0
        tekUser.toString() == "Ben Kafka"


    }
}
