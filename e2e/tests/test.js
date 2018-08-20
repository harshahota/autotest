describe('React Test', ()=> {
    beforeEach(()=> {
        browser.get('http://206.189.142.127:3000/');
      });
    it('should have a title', ()=> {
        browser.sleep(2000);
        expect(browser.getTitle()).toEqual('React App');
    });

    // it('Count of nav options',()=>{
    //     browser.sleep(200);
    //     var cont = element(by.css('.App h1')).getText();
    //     expect(cont).toEqual('Welcome to React');
    // })
    
});