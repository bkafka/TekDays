package com.tekdays

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
//import grails.test.mixin.TestMixin
//import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
//@TestMixin(GrailsUnitTestMixin)
@Mock(TekUser)
@TestFor(TekEvent)
class TekEventSpec extends Specification {

    def setup() {
        println("setup")
    }

    def cleanup() {
        println("cleanup")
    }

    void "test itString"() {

	when: "a tekEvent has a name and a city"
	def tekEvent = new TekEvent(name: 'Groovy One', city :'San Francisco', organizer: [fullName: 'John Doe'] as TekUser)
then: "The toString method will combine them."
tekEvent.toString() == 'Groovy One, San Francisco'

    }

    void 'Test validation() nothing filled in'() {
        given:
        mockForConstraintsTests TekEvent

        when: 'a name is not provided'
        def tekEvent = new TekEvent()
//        tekEvent.name=''
        then: 'validation should fail'
        !tekEvent.validate()
        if (tekEvent.hasErrors()) {
            tekEvent.errors.each { println it }
        }
        tekEvent.hasErrors()
        tekEvent.name == null
    }


     void   'Test validation() for all required fields'() {
        given:
        mockForConstraintsTests TekEvent
        def organizer = new TekUser()

        when: 'a name is not provided'
        def tekEvent = new TekEvent()
        tekEvent.name='Bob'
        tekEvent.description='george'
        tekEvent.city='NYC'
        tekEvent.organizer=organizer
        tekEvent.venue='Boston'
        tekEvent.startDate= new Date()
        tekEvent.endDate=new Date()
        then: 'validation should fail'
        tekEvent.validate()
//        if (tekEvent.hasErrors()) {
//            tekEvent.errors.each {println it}
//        }
        !tekEvent.hasErrors()
    }

    void   'Test validation() of max field length'() {
        given:
        mockForConstraintsTests TekEvent
        def organizer = new TekUser()

        when: 'a name is not provided'
        def tekEvent = new TekEvent()
        tekEvent.name='fdsa'
        tekEvent.description='a'*51
        tekEvent.city='NYC'
        tekEvent.organizer=organizer
        tekEvent.venue='Boston'
        tekEvent.startDate= new Date()
        tekEvent.endDate=new Date()
        then: 'validation should fail'
        !tekEvent.validate()
        if (tekEvent.hasErrors()) {
            tekEvent.errors.each {println it}
        }
        tekEvent.errors['description']=='maxSize'
        tekEvent.errors.errorCount == 1
        tekEvent.hasErrors()
    }
}
