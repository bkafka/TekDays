package com.tekdays

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Garden)
class GardenSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test required fields"() {

        when: 'just name given'
        def garden = new Garden([name:'kale'])
        garden.save()
        then: 'a record is successfully created'
        garden.validate()
        garden.id==1
    }
}
