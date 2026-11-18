.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$1niUY3m4gYbXDHt8ob6g6X0kfxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$1niUY3m4gYbXDHt8ob6g6X0kfxg;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$1niUY3m4gYbXDHt8ob6g6X0kfxg;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lambda$setGroupInfo$7(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Landroid/view/View;)V

    return-void
.end method
