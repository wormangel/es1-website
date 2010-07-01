package ObjetosDeDados

import grails.test.*

class NewsletterTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCreateNewsletter() {

		def n = new Newsletter(corpo:"Bom dia queridos telespectadores, esta newsletter é apenas para anunciar que estamos testando as coisas!!!")
		assert n.corpo == "Bom dia queridos telespectadores, esta newsletter é apenas para anunciar que estamos testando as coisas!!!"
		
    }
}
