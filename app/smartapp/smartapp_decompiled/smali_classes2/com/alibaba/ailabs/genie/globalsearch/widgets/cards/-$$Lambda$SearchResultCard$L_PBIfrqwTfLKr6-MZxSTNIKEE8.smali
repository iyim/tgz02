.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$L_PBIfrqwTfLKr6-MZxSTNIKEE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$L_PBIfrqwTfLKr6-MZxSTNIKEE8;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$L_PBIfrqwTfLKr6-MZxSTNIKEE8;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lambda$buildAudioContent$14$SearchResultCard(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
