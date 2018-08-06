describe('React Test', ()=> {
    beforeEach(()=> {
        browser.get('http://localhost:8081/');
      });
    it('should have a title', ()=> {
        expect(browser.getTitle()).toEqual('React App');
    });

    it('Count of nav options',()=>{
        var cont = element(by.css('.App h1')).getText();
        expect(cont).toEqual('Welcome to React');
    })
    
    it('Count of nav options',()=>{
        var cont = element(by.css('.App h1')).getText();
        expect(cont).toEqual('Welcome to React');
    })
});