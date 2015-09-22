
#import <UIKit/UIKit.h>

#import "TFHppleElement.h"
#import "TFHpple.h"

@interface TesteIphone1ViewController : UIViewController <UIGestureRecognizerDelegate> {
	UILabel *diaSemana;
	UILabel *salada;
	UILabel *carne;
	UILabel *acompanhamento;
	UILabel *arroz;
	UILabel *feijao;
	UILabel *sobremesa;

}
@property(nonatomic, retain) IBOutlet UILabel *diaSemana; //build setters and getters, link to the object on the screen
@property(nonatomic, retain) IBOutlet UILabel *salada;
@property(nonatomic, retain) IBOutlet UILabel *carne;
@property(nonatomic, retain) IBOutlet UILabel *acompanhamento;
@property(nonatomic, retain) IBOutlet UILabel *arroz;
@property(nonatomic, retain) IBOutlet UILabel *feijao;
@property(nonatomic, retain) IBOutlet UILabel *sobremesa;
//@property(nonatomic, retain) IBOutlet NSArray *stringArray;



-(IBAction) clickedProximo:(id)sender; //method is gonna be called whenever you click a button
-(IBAction) clickedAnterior:(id)sender;
-(IBAction) clickedRefresh:(id)sender;
-(IBAction) clickedHoje:(id)sender;

-(void) swipedAnterior;
-(void) swipedProximo;
-(void) swipedDown;
-(int) atualizaCardapio;
@end
NSURL *theURL;
NSData *data;

TFHpple *pageParser;

NSArray *pageNodes;
TFHppleElement *element; //aqui estão todas comidas, 0 é a primeira de 2a feira, 1 é um <br />, 2 é a segunda de 2a feira, 4 é um <br />,etc etc... As comidas são números pares para o primeiro dia, ímpares para o segundo, pares pro terceiro... porque cada dia é assim:  Agrião<br />Iscas à Francesa<br />Cless<br />Arroz<br />Feijão<br />Gelatina

NSString *valor;

NSArray *stringArray;

NSInteger segunda[6];
NSInteger terca[6];
NSInteger quarta[6];
NSInteger quinta[6];
NSInteger sexta[6];
