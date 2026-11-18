.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$lQlwrWK-rYJMl2EOkUqXJCCw6Sg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$lQlwrWK-rYJMl2EOkUqXJCCw6Sg;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$HotCard$lQlwrWK-rYJMl2EOkUqXJCCw6Sg;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->lambda$buildItemBuilder$5$HotCard(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
