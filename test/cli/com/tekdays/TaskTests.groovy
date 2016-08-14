package com.tekdays

import grails.test.AbstractCliTestCase

class TaskTests extends AbstractCliTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testComTekdaysTask() {

        execute(["com-tekdays-task"])

        assertEquals 0, waitForProcess()
        verifyHeader()
    }
}
