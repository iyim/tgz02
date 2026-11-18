.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

.field private final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$2:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$2:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$0B1fiOcECURiVkAbpKM55zvjEZI;->f$3:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lambda$null$11$SearchResultCard(Landroid/view/View;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
