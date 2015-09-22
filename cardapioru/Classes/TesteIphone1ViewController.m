//
//  TesteIphone1ViewController.m
//  TesteIphone1
//
//  Created by Anderson Foscarini on 11/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TesteIphone1ViewController.h"

@implementation TesteIphone1ViewController
@synthesize diaSemana;
@synthesize salada;
@synthesize carne;
@synthesize acompanhamento;
@synthesize arroz;
@synthesize feijao;
@synthesize sobremesa;
NSInteger alteraDia=0;
NSInteger diaAtual=0;



-(IBAction) clickedProximo:(id)sender{
	alteraDia+=7;
	if(alteraDia>28)
		alteraDia=0;
	
	diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
	salada.text = [stringArray objectAtIndex:1+alteraDia];
	carne.text = [stringArray objectAtIndex:2+alteraDia];
	acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
	arroz.text = [stringArray objectAtIndex:4+alteraDia];
	feijao.text = [stringArray objectAtIndex:5+alteraDia];
	sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
	//[stringArray release];
	
}	
-(void) swipedProximo{
	alteraDia+=7;
	if(alteraDia>28)
		alteraDia=0;
 
	diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
	salada.text = [stringArray objectAtIndex:1+alteraDia];
	carne.text = [stringArray objectAtIndex:2+alteraDia];
	acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
	arroz.text = [stringArray objectAtIndex:4+alteraDia];
	feijao.text = [stringArray objectAtIndex:5+alteraDia];
	sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
	//[stringArray release];
	
}	
-(void) swipedDown{
    if(self.atualizaCardapio)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sucesso" 
                                                        message:@"Cardápio atualizado!" 
                                                       delegate:nil 
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [alert release];
        diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
        salada.text = [stringArray objectAtIndex:1+alteraDia];
        carne.text = [stringArray objectAtIndex:2+alteraDia];
        acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
        arroz.text = [stringArray objectAtIndex:4+alteraDia];
        feijao.text = [stringArray objectAtIndex:5+alteraDia];
        sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
    }
}


-(void) swipedAnterior{
	alteraDia-=7;
	if(alteraDia<0)
		alteraDia=28;
 
	diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
	salada.text = [stringArray objectAtIndex:1+alteraDia];
	carne.text = [stringArray objectAtIndex:2+alteraDia];
	acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
	arroz.text = [stringArray objectAtIndex:4+alteraDia];
	feijao.text = [stringArray objectAtIndex:5+alteraDia];
	sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
	
	//[stringArray release];
	
}	


-(IBAction) clickedAnterior:(id)sender{
	alteraDia-=7;
	if(alteraDia<0)
		alteraDia=28;
 
	diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
	salada.text = [stringArray objectAtIndex:1+alteraDia];
	carne.text = [stringArray objectAtIndex:2+alteraDia];
	acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
	arroz.text = [stringArray objectAtIndex:4+alteraDia];
	feijao.text = [stringArray objectAtIndex:5+alteraDia];
	sobremesa.text = [stringArray objectAtIndex:6+alteraDia];

	//[stringArray release];
	
}	

-(IBAction) clickedRefresh:(id)sender{
    if(self.atualizaCardapio)
    {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sucesso" 
                                                    message:@"Cardápio atualizado!" 
                                                   delegate:nil 
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
        diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
        salada.text = [stringArray objectAtIndex:1+alteraDia];
        carne.text = [stringArray objectAtIndex:2+alteraDia];
        acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
        arroz.text = [stringArray objectAtIndex:4+alteraDia];
        feijao.text = [stringArray objectAtIndex:5+alteraDia];
        sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
    }
}

-(IBAction) clickedHoje:(id)sender{
    NSCalendar* cal = [NSCalendar currentCalendar];
	NSDateComponents * comp = [cal components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
    if([comp weekday] == 1 || [comp weekday] == 7)
		diaAtual=2;
	else {
		diaAtual=[comp weekday]-2;
	}
    
    alteraDia=diaAtual*7;
    if(diaAtual==2)
    {
        printf("fim de semana!\n");//mensagem fim de semana "é fim de semana, vou te mostrar a segunda-feira";
        diaAtual=0;
    }
    else
    {
        diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
        salada.text = [stringArray objectAtIndex:1+alteraDia];
        carne.text = [stringArray objectAtIndex:2+alteraDia];
        acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
        arroz.text = [stringArray objectAtIndex:4+alteraDia];
        feijao.text = [stringArray objectAtIndex:5+alteraDia];
        sobremesa.text = [stringArray objectAtIndex:6+alteraDia];
    }
    
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    UISwipeGestureRecognizer *swipeRIGHT = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedProximo)];
	swipeRIGHT.numberOfTouchesRequired = 1;
	swipeRIGHT.direction=UISwipeGestureRecognizerDirectionRight;
	[self.view addGestureRecognizer:swipeRIGHT];
	
	UISwipeGestureRecognizer *swipeLEFT = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedAnterior)];
	swipeRIGHT.numberOfTouchesRequired = 1;
	swipeRIGHT.direction=UISwipeGestureRecognizerDirectionLeft;
	[self.view addGestureRecognizer:swipeLEFT];
    
    UISwipeGestureRecognizer *swipeDOWN = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedDown)];
	swipeDOWN.numberOfTouchesRequired = 1;
	swipeDOWN.direction=UISwipeGestureRecognizerDirectionDown;
	[self.view addGestureRecognizer:swipeDOWN];

 
    int k=0, l=11, m=22, n=33;
    for(int j=0; j<6; j++)
    {
        segunda[j]=k;
        terca[j]=k+11;
        quarta[j]=k+22;
        quinta[j]=k+33;
        sexta[j]=k+44;
        k=k+2;
    }
    
	NSCalendar* cal = [NSCalendar currentCalendar];
	NSDateComponents * comp = [cal components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
	
	if([comp weekday] == 1 || [comp weekday] == 7)
		diaAtual=2;
	else {
		diaAtual=[comp weekday]-2;
        alteraDia=diaAtual*7;
	}
    k=self.atualizaCardapio;
    diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
    salada.text = [stringArray objectAtIndex:1+alteraDia];
    carne.text = [stringArray objectAtIndex:2+alteraDia];
    acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
    arroz.text = [stringArray objectAtIndex:4+alteraDia];
    feijao.text = [stringArray objectAtIndex:5+alteraDia];
    sobremesa.text = [stringArray objectAtIndex:6+alteraDia];

	//[stringArray release];
	
	[super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(BOOL)canBecomeFirstResponder{
	return YES;
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	[self becomeFirstResponder];
}





-(int)atualizaCardapio{
    //NSLog(@"ID = ");
    
    if([stringArray count]!=0)
    {
        [stringArray release];
        stringArray=nil;
    }
    
    theURL = [NSURL URLWithString:@"http://www.ufrgs.br/ufrgs/ru"];
    data = [[NSData alloc] initWithContentsOfURL:theURL];
    
    pageParser = [TFHpple hppleWithHTMLData:data];
    NSString *pageParserXpathQueryString = @"//div[@id='cardapio']/div[@class='slide dia']/div//node()";
   
    
    //pageParserXpathQueryString = @"//div[@id='cardapio']/div[@class='slide dia']/div//node()";
   // NSString *pageParserXpathQueryString = @"//div[@id='interna']/div//node()";

    pageNodes = [pageParser searchWithXPathQuery:pageParserXpathQueryString];
    if([pageNodes count]==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro" 
                                                        message:@"Você não está conectado à internet ou o cardápio não está disponível no site." 
                                                       delegate:nil 
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [alert release];
        
        printf("pageParser não encontrou os nodos.\n");
        stringArray = [[NSArray alloc] initWithObjects: 
                       @"Erro", 
                       @"",
                       @"Cardápio indisponível.", 
                       @"Para tentar novamente,", 
                       @"pressione Atualizar", 
                       @"", 
                       @"",
                       
                       @"Erro", 
                       @"",
                       @"Cardápio indisponível.", 
                       @"Para tentar novamente,", 
                       @"pressione Atualizar", 
                       @"", 
                       @"",
                       
                       @"Erro", 
                       @"",
                       @"Cardápio indisponível.", 
                       @"Para tentar novamente,", 
                       @"pressione Atualizar", 
                       @"", 
                       @"",
                       
                       @"Erro", 
                       @"",
                       @"Cardápio indisponível.", 
                       @"Para tentar novamente,", 
                       @"pressione Atualizar", 
                       @"", 
                       @"",
                       
                       @"Erro", 
                       @"",
                       @"Cardápio indisponível.", 
                       @"Para tentar novamente,", 
                       @"pressione Atualizar", 
                       @"", 
                       @"",
                       
                       nil];
        diaSemana.text=[stringArray objectAtIndex:0+alteraDia];
        salada.text = [stringArray objectAtIndex:1+alteraDia];
        carne.text = [stringArray objectAtIndex:2+alteraDia];
        acompanhamento.text = [stringArray objectAtIndex:3+alteraDia];
        arroz.text = [stringArray objectAtIndex:4+alteraDia];
        feijao.text = [stringArray objectAtIndex:5+alteraDia];
        sobremesa.text = [stringArray objectAtIndex:6+alteraDia];

        
        return 0;
    }
    else{
       int i;
        NSRange textRange1, textRange2, textRange3, textRange4, textRange5;
        textRange1=[[[pageNodes objectAtIndex:segunda[0]] content] rangeOfString:@"F E R I A D O"];

         if(textRange1.location != NSNotFound)
         {
             segunda[1]=0;segunda[2]=0;segunda[3]=0;segunda[4]=0;segunda[5]=0;
            for(i=0;i<6;i++)
            {
                terca[i]-=10;
                quarta[i]-=10;
                quinta[i]-=10;
                sexta[i]-=10;
            }
         }
         else
         {
             textRange2=[[[pageNodes objectAtIndex:terca[0]] content] rangeOfString:@"F E R I A D O"];

            if(textRange2.location != NSNotFound)
            {
                terca[1]=11;terca[2]=11;terca[3]=11;terca[4]=11;terca[5]=11;
                for(i=0;i<6;i++)
                {
                    quarta[i]-=10;
                    quinta[i]-=10;
                    sexta[i]-=10;
                }
            }
            else
            {
                textRange3=[[[pageNodes objectAtIndex:quarta[0]] content] rangeOfString:@"F E R I A D O"];
                if(textRange3.location != NSNotFound)
                {
                    quarta[1]=22;quarta[2]=22;quarta[3]=22;quarta[4]=22;quarta[5]=22;
                    for(i=0;i<6;i++)
                    {
                        quinta[i]-=10;
                        sexta[i]-=10;
                    }
                }
                else
                {
                    textRange4=[[[pageNodes objectAtIndex:quinta[0]] content] rangeOfString:@"F E R I A D O"];
                    if(textRange4.location != NSNotFound)
                    {
                        quinta[1]=33;quinta[2]=33;quinta[3]=33;quinta[4]=33;quinta[5]=33;;
                        for(i=0;i<6;i++)
                        {
                            sexta[i]-=10;
                        }
                    }
                    else
                    {
                        textRange5=[[[pageNodes objectAtIndex:sexta[0]] content] rangeOfString:@"F E R I A D O"];
                        if(textRange5.location != NSNotFound)
                        {
                            sexta[1]=44;sexta[2]=44;sexta[3]=44;sexta[4]=44;sexta[5]=44;
                        }
                    }
                }
            }
         }
         
        NSRange textRangeRisoto1, textRangeRisoto2, textRangeRisoto3, textRangeRisoto4, textRangeRisoto5;
      
        textRangeRisoto1=[[[pageNodes objectAtIndex:segunda[1]] content] rangeOfString:@"Risoto"];
        textRangeRisoto2=[[[pageNodes objectAtIndex:terca[1]] content] rangeOfString:@"Risoto"];
        textRangeRisoto3=[[[pageNodes objectAtIndex:quarta[1]] content] rangeOfString:@"Risoto"];
        textRangeRisoto4=[[[pageNodes objectAtIndex:quinta[1]] content] rangeOfString:@"Risoto"];
        textRangeRisoto5=[[[pageNodes objectAtIndex:sexta[1]] content] rangeOfString:@"Risoto"];
        if(textRangeRisoto1.location != NSNotFound)
        {
            segunda[5]=segunda[4];
        }
        if(textRangeRisoto2.location != NSNotFound)
        {
            terca[5]=terca[4];
        }
        if(textRangeRisoto3.location != NSNotFound)
        {
            quarta[5]=quarta[4];
        }
        if(textRangeRisoto4.location != NSNotFound)
        {
            quinta[5]=quinta[4];
        }
        if(textRangeRisoto5.location != NSNotFound)
        {
            sexta[5]=sexta[4];
        }
         
         
         
    stringArray = [[NSArray alloc] initWithObjects: 
                   @"Segunda-Feira", 
                   [[[pageNodes objectAtIndex:segunda[0]] content]stringByReplacingOccurrencesOfString:@" \n                                            " withString:@""],
                   [[pageNodes objectAtIndex:segunda[1]] content], 
                   [[pageNodes objectAtIndex:segunda[2]] content], 
                   [[pageNodes objectAtIndex:segunda[3]] content], 
                   
                   [[[pageNodes objectAtIndex:segunda[4]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:segunda[5]] content] withString:@""],
                   
                   [[[pageNodes objectAtIndex:segunda[5]] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
                   
                   @"Terça-Feira", 
                   [[[pageNodes objectAtIndex:terca[0]] content]stringByReplacingOccurrencesOfString:@" \n                                            " withString:@""], 
                   [[pageNodes objectAtIndex:terca[1]] content], 
                   [[pageNodes objectAtIndex:terca[2]] content], 
                   [[pageNodes objectAtIndex:terca[3]] content], 
                   
                   [[[pageNodes objectAtIndex:terca[4]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:terca[5]] content] withString:@""],
                   
                   [[[pageNodes objectAtIndex:terca[5]] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
                   
                   @"Quarta-Feira", 
                   [[[pageNodes objectAtIndex:quarta[0]] content]stringByReplacingOccurrencesOfString:@"  \n                                            " withString:@""], 
                   [[pageNodes objectAtIndex:quarta[1]] content], 
                   [[pageNodes objectAtIndex:quarta[2]] content], 
                   [[pageNodes objectAtIndex:quarta[3]] content], 
                   
                   [[[pageNodes objectAtIndex:quarta[4]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:quarta[5]] content] withString:@""],
                   
                   [[[pageNodes objectAtIndex:quarta[5]] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
                   
                   @"Quinta-Feira", [[[[[[pageNodes objectAtIndex:quinta[0]] content]stringByReplacingOccurrencesOfString:@"        \n                                            " withString:@""]stringByReplacingOccurrencesOfString:@"  " withString:@""]stringByReplacingOccurrencesOfString:@" " withString:@""]stringByReplacingOccurrencesOfString:@"OR" withString:@"O R"],
                 
                   [[[pageNodes objectAtIndex:quinta[1]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:quinta[0]] content] withString:@""],
                   
                  [[[pageNodes objectAtIndex:quinta[2]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:quinta[1]] content] withString:@""],
                   
                   [[[pageNodes objectAtIndex:quinta[3]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:quinta[2]] content] withString:@""],
                   
                   [[[pageNodes objectAtIndex:quinta[4]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:quinta[5]] content] withString:@""],
                   
                   [[[[[pageNodes objectAtIndex:quinta[5]] content]stringByReplacingOccurrencesOfString:@"  " withString:@""]stringByReplacingOccurrencesOfString:@" " withString:@""]stringByReplacingOccurrencesOfString:@"OR" withString:@"O R"],
                   
                   @"Sexta-Feira", [[[pageNodes objectAtIndex:sexta[0]] content]stringByReplacingOccurrencesOfString:@" \n                                           " withString:@""], 
                   [[pageNodes objectAtIndex:sexta[1]] content], 
                   [[pageNodes objectAtIndex:sexta[2]] content], 
                   [[pageNodes objectAtIndex:sexta[3]] content], 
                   
                   [[[pageNodes objectAtIndex:sexta[4]] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
                   
                   [[[pageNodes objectAtIndex:sexta[5]] content] stringByReplacingOccurrencesOfString:[[pageNodes objectAtIndex:sexta[4]] content] withString:@""],
                    
                   
                   nil];

    
       // valor = [[pageNodes objectAtIndex:36] content];
    
   /* NSRange textRange1;
        textRange1=[[[pageNodes objectAtIndex:36] content] rangeOfString:@"F E R I A D O"];
        if(textRange1.location != NSNotFound)
        { 
    */
        //NSLog(@"VALOR = %@", valor);
      //  }
    
    //element = [pageNodes objectAtIndex:11]; //aqui estão todas comidas, 0 é a primeira de 2a feira, 1 é um <br />, 2 é a segunda de 2a feira, 4 é um <br />,etc etc... As comidas são números pares para o primeiro dia, ímpares para o segundo, pares pro terceiro... porque cada dia é assim:  Agrião<br />Iscas à Francesa<br />Cless<br />Arroz<br />Feijão<br />Gelatina
    
    // NSString *valor = [element content];
    
    //    NSLog(@"VALOR = %@", valor);

    //NSLog(@"ID = %@",idValue);
        return 1;
    }
    
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
	if(event.subtype == UIEventSubtypeMotionShake)
	{
		self.swipedProximo;
	}
}








- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.diaSemana=nil;
	self.salada=nil;
	self.carne=nil;
	self.acompanhamento=nil;
	self.arroz=nil;
	self.feijao=nil;
	self.sobremesa=nil;	
    
}


- (void)dealloc {
    [super dealloc];
	[diaSemana release];
	[salada release];
	[carne release];
	[acompanhamento release];
	[arroz release];
	[feijao release];
	[sobremesa release];
    [stringArray release];
}

@end
/*
 stringArray = [[NSArray alloc] initWithObjects: 
 @"Segunda-Feira", 
 [[[pageNodes objectAtIndex:0] content]stringByReplacingOccurrencesOfString:@" \n                                            " withString:@""],
 [[pageNodes objectAtIndex:2] content], 
 [[pageNodes objectAtIndex:4] content], 
 [[pageNodes objectAtIndex:6] content], 
 [[pageNodes objectAtIndex:8] content], 
 [[[pageNodes objectAtIndex:10] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
 
 @"Terça-Feira", 
 [[[pageNodes objectAtIndex:11] content]stringByReplacingOccurrencesOfString:@" \n                                            " withString:@""], 
 [[pageNodes objectAtIndex:13] content], 
 [[pageNodes objectAtIndex:15] content], 
 [[pageNodes objectAtIndex:17] content], 
 [[pageNodes objectAtIndex:19] content], 
 [[[pageNodes objectAtIndex:21] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
 
 @"Quarta-Feira", 
 [[[pageNodes objectAtIndex:22] content]stringByReplacingOccurrencesOfString:@"  \n                                            " withString:@""], 
 [[pageNodes objectAtIndex:24] content], 
 [[pageNodes objectAtIndex:26] content], 
 [[pageNodes objectAtIndex:28] content], 
 [[pageNodes objectAtIndex:30] content], 
 [[[pageNodes objectAtIndex:32] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
 
 @"Quinta-Feira", [[[pageNodes objectAtIndex:33] content]stringByReplacingOccurrencesOfString:@"        \n                                            " withString:@""], 
 [[pageNodes objectAtIndex:35] content], 
 [[pageNodes objectAtIndex:37] content], 
 [[pageNodes objectAtIndex:39] content], 
 [[pageNodes objectAtIndex:41] content], 
 [[[pageNodes objectAtIndex:43] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
 
 @"Sexta-Feira", [[[pageNodes objectAtIndex:44] content]stringByReplacingOccurrencesOfString:@" \n                                           " withString:@""], 
 [[pageNodes objectAtIndex:46] content], 
 [[pageNodes objectAtIndex:48] content], 
 [[pageNodes objectAtIndex:50] content], 
 [[pageNodes objectAtIndex:52] content], 
 [[[pageNodes objectAtIndex:54] content]stringByReplacingOccurrencesOfString:@"\n                                        " withString:@""],
 
 nil];
 
 
 stringArray = [[NSArray alloc] initWithObjects: 
 @"Segunda-Feira", 
 @"Alfafa",
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa",
 
 @"Terça-Feira", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa",
 
 @"Quarta-Feira", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa",
 
 @"Quinta-Feira", @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa",
 
 @"Sexta-Feira", @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa", 
 @"Alfafa",
 
 nil];*/
